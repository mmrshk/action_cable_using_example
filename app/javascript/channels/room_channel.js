import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    // console.log("Connected to the room!")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('#msg').append(
      `<h1>Matrix result</h1>
      <br>
      <div class="message">
      <table class="table table-hover">
        <tbody>
          <tr>
            <th>`  + data.content[0][0] + `</th>
            <td>`  + data.content[0][1] + `</td>
            <td>`  + data.content[0][2] + `</td>
          </tr>
          <tr>
            <th>`  + data.content[1][0] + `</th>
            <td>`  + data.content[1][1] + `</td>
            <td>`  + data.content[1][2] + `</td>
          </tr>
        </tbody>
      </table>
      </div>`
    )
    console.log("Recieving:")
    console.log(data.content)
  }
});

let submit_messages;

$(document).on('turbolinks:load', function () {
  submit_messages()
})

submit_messages = function () {
  $('#message_content').on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click()
      event.target.value = ''
      event.preventDefault()
    }
  })
}
