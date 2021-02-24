<template>
  <div class="main">
    <span>
      <img class="img" src="./images/EnqueteLogo.png" /><br>
    </span>
    <form id="j_id0:j_id8" name="j_id0:j_id8" @submit.prevent="$emit('submit')">
      <div v-if="errors.length != 0">
        <ul v-for="e in errors" :key="e">
          <li><font color="red">{{ e }}</font></li>
        </ul>
      </div>
      <span id="j_id0:j_id8:j_id9" style="font-size:20px; font-weight:700">
        <span id="j_id0:j_id8:j_id10">お客様アンケート</span><br>
      </span>
      <span id="j_id0:j_id8:j_id12">
        本アンケートは、02/14/10:22のお問い合わせに関するアンケートです。お手数ですが、対応品質向上のため、
        ご協力くださいますようお願いいたします。
        <br>
        なお、ご対応中にアンケートが届いた場合は、恐れ入りますが、
        ご対応終了後に本アンケートへのご回答をお願いいたします。<br><br>
      </span>
      <span id="j_id0:j_id8:j_id17">
        <span id="j_id0:j_id8:j_id18">
          ※所要時間5～10分程度<br>
        </span><br><br>
      </span>
      <hr width="100%">
      <b style="color: #FF0000; font-size:16px">
      </b>
      <table style="width:100%">
        <tbody>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:0:j_id42" style="font-size:16px; font-weight:700">
                <label>Q1.</label>
              </span>
              <span>
                今後もお問い合わせいただいた際に、本アンケートをお送りしてよろしいですか。
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q1" type="radio" name="j_id0:j_id8:j_id39:0:j_id49" id="j_id0:j_id8:j_id39:0:j_id49:0" value="yes">
                        <label for="j_id0:j_id8:j_id39:0:j_id49:0"> 01.はい</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q1" type="radio" name="j_id0:j_id8:j_id39:0:j_id49" id="j_id0:j_id8:j_id39:0:j_id49:1" value="no">
                        <label for="j_id0:j_id8:j_id39:0:j_id49:1"> 02.いいえ</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span style="font-size:16px; font-weight:700">
                <label>Q2.</label>
              </span>
              <span style="font-size:16px; font-weight:700">
                <span>
                  どちらからお問い合わせいただきましたか。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:0" value="paypay_mall">
                          <label for="j_id0:j_id8:j_id39:1:j_id49:0"> 01.PayPayモールから</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:1" value="help_page_in_zozotown">
                          <label for="j_id0:j_id8:j_id39:1:j_id49:1"> 02.ZOZOTOWN内のヘルプページから</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:2" value="order_history_in_zozotown">
                          <label for="j_id0:j_id8:j_id39:1:j_id49:2"> 03.ZOZOTOWN内の注文履歴から</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:3" value="delivery_slip">
                          <label for="j_id0:j_id8:j_id39:1:j_id49:3"> 04.納品書を見て</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:4" value="link_on_mail_from_zozotown">
                          <label for="j_id0:j_id8:j_id39:1:j_id49:4"> 05.ZOZOTOWNからのメールにあるリンクから</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q2" type="radio" name="j_id0:j_id8:j_id39:1:j_id49" id="j_id0:j_id8:j_id39:1:j_id49:5" value="other">
                        <label for="j_id0:j_id8:j_id39:1:j_id49:5"> 06.その他</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td>
              <span id="j_id0:j_id8:j_id39:1:j_id73" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:1:j_id74">
                  ※その他を選んだ場合は、以下にご入力をお願いします
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <textarea v-model="questionnaire.q2_other" name="j_id0:j_id8:j_id39:1:j_id76" style="width:100%"></textarea>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:2:j_id42" style="font-size:16px; font-weight:700">
                <label>Q3. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:2:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:2:j_id45">
                  今回のカスタマーサポートの対応はいかがでしたか。総合満足度をお聞かせください。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q3" type="radio" name="j_id0:j_id8:j_id39:2:j_id49" id="j_id0:j_id8:j_id39:2:j_id49:0" value="very_satisfied">
                        <label for="j_id0:j_id8:j_id39:2:j_id49:0"> 01.満足</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q3" type="radio" name="j_id0:j_id8:j_id39:2:j_id49" id="j_id0:j_id8:j_id39:2:j_id49:1" value="satisfied">
                        <label for="j_id0:j_id8:j_id39:2:j_id49:1"> 02.やや満足</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q3" type="radio" name="j_id0:j_id8:j_id39:2:j_id49" id="j_id0:j_id8:j_id39:2:j_id49:2" value="neither">
                        <label for="j_id0:j_id8:j_id39:2:j_id49:2"> 03.ふつう</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q3" type="radio" name="j_id0:j_id8:j_id39:2:j_id49" id="j_id0:j_id8:j_id39:2:j_id49:3" value="unsatisfied">
                        <label for="j_id0:j_id8:j_id39:2:j_id49:3"> 04.やや不満</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q3" type="radio" name="j_id0:j_id8:j_id39:2:j_id49" id="j_id0:j_id8:j_id39:2:j_id49:4" value="very_unsatisfied">
                        <label for="j_id0:j_id8:j_id39:2:j_id49:4"> 05.不満</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:3:j_id42" style="font-size:16px; font-weight:700">
                <label>Q4. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:3:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:3:j_id45">解決までの時間は速いと感じましたか。</span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q4" type="radio" name="j_id0:j_id8:j_id39:3:j_id49" id="j_id0:j_id8:j_id39:3:j_id49:0" value="strongly_agree">
                        <label for="j_id0:j_id8:j_id39:3:j_id49:0"> 01.そう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q4" type="radio" name="j_id0:j_id8:j_id39:3:j_id49" id="j_id0:j_id8:j_id39:3:j_id49:1" value="agree">
                        <label for="j_id0:j_id8:j_id39:3:j_id49:1"> 02.どちらかといえばそう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q4" type="radio" name="j_id0:j_id8:j_id39:3:j_id49" id="j_id0:j_id8:j_id39:3:j_id49:2" value="neutral">
                        <label for="j_id0:j_id8:j_id39:3:j_id49:2"> 03.どちらでもない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q4" type="radio" name="j_id0:j_id8:j_id39:3:j_id49" id="j_id0:j_id8:j_id39:3:j_id49:3" value="disagree">
                        <label for="j_id0:j_id8:j_id39:3:j_id49:3"> 04.あまりそう思わない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q4" type="radio" name="j_id0:j_id8:j_id39:3:j_id49" id="j_id0:j_id8:j_id39:3:j_id49:4" value="strongly_disagree">
                        <label for="j_id0:j_id8:j_id39:3:j_id49:4"> 05.そう思わない</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:4:j_id42" style="font-size:16px; font-weight:700">
                <label>Q5. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:4:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:4:j_id45">
                  お問い合わせ内容は解決しましたか。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q5" type="radio" name="j_id0:j_id8:j_id39:4:j_id49" id="j_id0:j_id8:j_id39:4:j_id49:0" value="strongly_agree">
                        <label for="j_id0:j_id8:j_id39:4:j_id49:0">
                          01.そう思う
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q5" type="radio" name="j_id0:j_id8:j_id39:4:j_id49" id="j_id0:j_id8:j_id39:4:j_id49:1" value="agree">
                        <label for="j_id0:j_id8:j_id39:4:j_id49:1">
                          02.どちらかといえばそう思う
                        </label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q5" type="radio" name="j_id0:j_id8:j_id39:4:j_id49" id="j_id0:j_id8:j_id39:4:j_id49:2" value="neutral">
                        <label for="j_id0:j_id8:j_id39:4:j_id49:2"> 03.どちらでもない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q5" type="radio" name="j_id0:j_id8:j_id39:4:j_id49" id="j_id0:j_id8:j_id39:4:j_id49:3" value="disagree">
                        <label for="j_id0:j_id8:j_id39:4:j_id49:3"> 04.あまりそう思わない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q5" type="radio" name="j_id0:j_id8:j_id39:4:j_id49" id="j_id0:j_id8:j_id39:4:j_id49:4" value="strongly_disagree">
                        <label for="j_id0:j_id8:j_id39:4:j_id49:4">
                          05.そう思わない
                        </label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:5:j_id42" style="font-size:16px; font-weight:700">
                <label>Q6. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:5:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:5:j_id45">
                  納得のいく回答は得られましたか。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q6" type="radio" name="j_id0:j_id8:j_id39:5:j_id49" id="j_id0:j_id8:j_id39:5:j_id49:0" value="strongly_agree">
                        <label for="j_id0:j_id8:j_id39:5:j_id49:0"> 01.そう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q6" type="radio" name="j_id0:j_id8:j_id39:5:j_id49" id="j_id0:j_id8:j_id39:5:j_id49:1" value="agree">
                        <label for="j_id0:j_id8:j_id39:5:j_id49:1"> 02.どちらかといえばそう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q6" type="radio" name="j_id0:j_id8:j_id39:5:j_id49" id="j_id0:j_id8:j_id39:5:j_id49:2" value="neutral">
                        <label for="j_id0:j_id8:j_id39:5:j_id49:2"> 03.どちらでもない</label></td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q6" type="radio" name="j_id0:j_id8:j_id39:5:j_id49" id="j_id0:j_id8:j_id39:5:j_id49:3" value="disagree">
                        <label for="j_id0:j_id8:j_id39:5:j_id49:3"> 04.あまりそう思わない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q6" type="radio" name="j_id0:j_id8:j_id39:5:j_id49" id="j_id0:j_id8:j_id39:5:j_id49:4" value="strongly_disagree">
                        <label for="j_id0:j_id8:j_id39:5:j_id49:4"> 05.そう思わない</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:6:j_id42" style="font-size:16px; font-weight:700">
                <label>Q7. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:6:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:6:j_id45">お客様に対して、親身に寄り添い、思いやりを持った接し方をしていましたか。</span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <fieldset style="border: none;">
                <table role="presentation">
                  <tbody>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q7" type="radio" name="j_id0:j_id8:j_id39:6:j_id49" id="j_id0:j_id8:j_id39:6:j_id49:0" value="strongly_agree">
                        <label for="j_id0:j_id8:j_id39:6:j_id49:0"> 01.そう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q7" type="radio" name="j_id0:j_id8:j_id39:6:j_id49" id="j_id0:j_id8:j_id39:6:j_id49:1" value="agree">
                        <label for="j_id0:j_id8:j_id39:6:j_id49:1"> 02.どちらかといえばそう思う</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q7" type="radio" name="j_id0:j_id8:j_id39:6:j_id49" id="j_id0:j_id8:j_id39:6:j_id49:2" value="neutral">
                        <label for="j_id0:j_id8:j_id39:6:j_id49:2"> 03.どちらでもない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q7" type="radio" name="j_id0:j_id8:j_id39:6:j_id49" id="j_id0:j_id8:j_id39:6:j_id49:3" value="disagree">
                        <label for="j_id0:j_id8:j_id39:6:j_id49:3"> 04.あまりそう思わない</label>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input v-model="questionnaire.q7" type="radio" name="j_id0:j_id8:j_id39:6:j_id49" id="j_id0:j_id8:j_id39:6:j_id49:4" value="strongly_diagree">
                        <label for="j_id0:j_id8:j_id39:6:j_id49:4"> 05.そう思わない</label>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </fieldset>
            </td>
          </tr>
          <tr>
            <td>
              <span id="j_id0:j_id8:j_id39:6:j_id73" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:6:j_id74">対応者へのご意見がございましたら、お聞かせください。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <textarea v-model="questionnaire.q7_other" name="j_id0:j_id8:j_id39:6:j_id76" style="width:100%"></textarea>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:7:j_id42" style="font-size:16px; font-weight:700">
                <label>Q8. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:7:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:7:j_id45">
                  ZOZOTOWNを友人にすすめたいと思いますか。おすすめ度の点数を教えてください。（すすめたい10点～すすめたくない0点）
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <select v-model="questionnaire.q8" name="j_id0:j_id8:j_id39:7:j_id54" size="1" style="width:100%">
                <option value="">--なし--</option>
                <option value="10">10</option>
                <option value="9">9</option>
                <option value="8">8</option>
                <option value="7">7</option>
                <option value="6">6</option>
                <option value="5">5</option>
                <option value="4">4</option>
                <option value="3">3</option>
                <option value="2">2</option>
                <option value="1">1</option>
                <option value="0">0</option>
              </select>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
          <tr>
            <td style="word-wrap:break-word;" valign="top">
              <span id="j_id0:j_id8:j_id39:8:j_id42" style="font-size:16px; font-weight:700">
                <label>Q9. </label>
              </span>
              <span id="j_id0:j_id8:j_id39:8:j_id44" style="font-size:16px; font-weight:700">
                <span id="j_id0:j_id8:j_id39:8:j_id45">その他、ご意見・ご要望がございましたら、お聞かせください。
                </span>
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <textarea v-model="questionnaire.q9" name="j_id0:j_id8:j_id39:8:j_id63" style="width:100%"></textarea>
            </td>
          </tr>
          <tr>
            <td height="16px"></td>
          </tr>
        </tbody>
      </table>
      <div align="center" style="margin-bottom:40px">
        <span id="j_id0:j_id8:j_id80">
          <input type="submit" name="j_id0:j_id8:j_id81" value="確認" style="width:100px; font-size:13px;" class="btn">
        </span>
      </div>
      <div id="j_id0:j_id8:j_id84"></div>
    </form>
  </div>
</template>

<script>
export default {
  props: {
    questionnaire: {},
    errors: {}
  }
}
</script>

<style scoped>
  .main {
    width: 720px;
    margin: 0px auto;
  }
</style>