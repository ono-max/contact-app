<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import ChatPage from 'Chat.vue'
import QuestionnairePage from 'Questionnaire.vue'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'

// Import Bootstrap an BootstrapVue CSS files (order is important)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Make BootstrapVue available throughout your project
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)


const router = new VueRouter({
  routes: [
    { path: '/',
      component: ChatPage  },
    { path: '/sample',
      name: 'QuestionnairePage',
      component: QuestionnairePage }
  ]

})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>