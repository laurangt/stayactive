import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like"
export default class extends Controller {
  static targets = ["count"]
  static values = { postId: Number, heartIdByCurrentUser: Number}

  connect() {
    console.log("hello")
    // console.log(this.postIdValue);
  }

  toggle(event){
    if (this.countTarget.classList.contains('red')){
      this.remove(event)
      this.countTarget.classList.toggle('red')
    } else {
      this.add(event)
      this.countTarget.classList.toggle('red')
    }
  }

  add(event) {
    event.preventDefault();
    fetch(`/posts/${this.postIdValue}/hearts`, {
       method: 'post' ,
       headers: {'Content-Type': 'application/json'},
      })
    .then(response => response.text())
    .then((data) => {
      this.countTarget.outerHTML = data
    })
  }

  remove(event){
    event.preventDefault();
    fetch(`/hearts/${this.heartIdByCurrentUserValue}`, {
      method: 'DELETE',
      headers: {"Accept": "text/plain"}
     })
    .then(response => response.text())
    .then((data) => {
      this.countTarget.outerHTML = data
    })
  }
}
