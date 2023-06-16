import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="interface"
export default class extends Controller {

  sendQuestion(event){
    var question = document.getElementById("question").value;

    this.updateChat(question, "user-message")
    this.sendRequest(question)
    event.preventDefault();
  }

  updateChat(text, message_class){
    var chat = document.getElementById("all-chat");

    var message = document.createElement('div');
    message.classList.add('message', message_class);
    message.innerHTML = text;
    chat.appendChild(message);

    // question.value = "";
  }

  sendRequest(question){
    var language = document.getElementById("language");

    fetch("/interfaces/send_message/?question="+ question +"&language="+ language.value)
    .then(response => response.json())
    .then(data => this.updateChat(data["answer"], "ai-message"))
  }
}
