<template>
  <questionnaire-form :errors="errors" :questionnaire="questionnaire" @submit="createQuestionnaire"></questionnaire-form>
</template>

<script>
import axios from 'axios'
import QuestionnaireForm from 'QuestionnaireForm.vue'

export default {
  components: {
    QuestionnaireForm
  },
  data() {
    return {
      questionnaire: {
        q1: '',
        q2: '',
        q2_other: '',
        q3: '',
        q4: '',
        q5: '',
        q6: '',
        q7: '',
        q7_other: '',
        q8: '',
        q9: '',  
      },
      errors: ''
    }
  },
  methods: {
    createQuestionnaire: function() {
      axios
        .post('/api/v1/questionnaires', this.questionnaire)
        .then(response => {
          this.$router.push('/')
        })
        .catch(error => {
          console.error(error);
          if (error.response.data && error.response.data.errors) {
            this.errors = error.response.data.errors;
          }
        })
    }
  }
}
</script>
<style scoped>
</style>