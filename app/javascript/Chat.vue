<template>
  <div>
    <div class="card card-bordered">
        <div class="card-header">
            <h4 class="card-title"><strong>お問い合わせ</strong></h4>
            <b-button @click="$bvModal.show('modal-scoped')">チャットを終了する</b-button>
            <b-modal id="modal-scoped">
              <template #modal-title>
                <h3>ZOZOTOWNカスタマーサポートセンターへ、お問い合わせをいただき、誠にありがとうございました。</h3>
              </template>

                <p>[回答する]をクリックしてアンケートへのご協力をお願いいたします。</p>

              <template #modal-footer>
                <router-link :to="{ name: 'QuestionnaireNewPage' }">
                  <b-button variant="primary">
                    回答する
                  </b-button>
                </router-link>
              </template>
            </b-modal>
        </div>
        <div>
            <div class="media media-chat">
                <div class="media-body">
                    <p>こんにちは。</p>
                    <p>この度はいかがなさいましか？</p>
                </div>
            </div>
            <div class="media media-chat media-chat-reverse">
                <div class="media-body">
                    <p>ZOZOマットを1月24日に注文したのですが、まだ届いていません。</p>
                    <p>注文番号は4353209です。</p>
                </div>
            </div>
        </div>
        <footer class="publisher bt-1 border-light card-footer">
          <b-form-input v-model="text" placeholder="Enter your name">
          </b-form-input>
        </footer>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.card-bordered {
    border: 1px solid #ebebeb;
    min-height: 100vh;
    position:relative;
    box-sizing:border-box;
    padding-bottom:30px;
}

.card {
    border: 0;
    border-radius: 0px;
    margin-bottom: 30px;
    -webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
    box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
    -webkit-transition: .5s;
    transition: .5s
}

.card-header {
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    padding: 15px 20px;
    background-color: transparent;
    border-bottom: 1px solid rgba(77, 82, 89, 0.07);
}

.card-header .card-title {
    padding: 0;
    border: none
}

h4.card-title {
    font-size: 17px
}

.card-title {
    font-family: Roboto, sans-serif;
    font-weight: 300;
    line-height: 1.5;
    margin-bottom: 0;
    padding: 15px 20px;
    border-bottom: 1px solid rgba(77, 82, 89, 0.07)
}

.media-chat .media-body {

    -webkit-box-flex: initial;
    flex: initial;
    display: table
}

.media-body {
    min-width: 0
}

.media-chat .media-body p {
    position: relative;
    padding: 6px 8px;
    margin: 4px 0;
    background-color: #f5f6f7;
    border-radius: 3px;
    font-weight: 100;
    color: #000000;
}


.media-chat.media-chat-reverse {
    padding-right: 12px;
    padding-left: 64px;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: reverse;
    flex-direction: row-reverse
}

.media {
    padding: 16px 12px;
    -webkit-transition: background-color .2s linear;
    transition: background-color .2s linear
}

.media-chat.media-chat-reverse .media-body p {
    float: right;
    clear: right;
    background-color: #48b0f7;
    color: #fff
}

footer {
  width:100%;
  padding:5px 0;
  position:absolute;
  bottom:0;
  -webkit-box-align: center;
  align-items: center;
  padding: 12px 20px;
  background-color: #f9fafb
}

</style>