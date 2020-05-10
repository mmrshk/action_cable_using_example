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
    let container = document.getElementById('msg');
    let table = document.createElement('table');
    table.setAttribute('class', 'tableClass table table-hover');

    container.appendChild(table);

    data.content.forEach((rowData, index) => {
      const dataRow = document.createElement('tr');
      dataRow.setAttribute('class', `row-${index}`);
      rowData.forEach(innerData => {
        const innerDataContainer = document.createElement('td');
        innerDataContainer.innerText = innerData;
        dataRow.appendChild(innerDataContainer);
      });
      table.appendChild(dataRow);
    });

    
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
