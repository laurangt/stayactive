import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like"
export default class extends Controller {
  static targets = ["count"]
  static values = { postId: Number }

  connect() {
    console.log("hello")
    console.log(this.postIdValue);
  }

  add(event) {
    event.preventDefault();
    fetch(`/posts/${this.postIdValue}/hearts`, {
       method: 'post' ,
       headers: {'Content-Type': 'application/json'},
      })
    .then(value => Number(value))
    let value;
    if (this.countTarget.innerText === "0") {
      value = 0;
    } else {
      value = parseInt(this.countTarget.innerText, 10);
    }
    value += 1;
    this.countTarget.innerText = value;
  }

  // remove(event){
  //   event.preventDefault();
  //   fetch(`/groups/${this.groupValue}/hearts/${this.heartValue}`, {
  //     method: 'patch' ,
  //     headers: {'Content-Type': 'application/json'},
  //    })
  //   .then(value => Number(value))
  //   let value;
  //   if (this.countTarget.innerText === "0") {
  //     value = 0;
  //   } else {
  //     value = parseInt(this.countTarget.innerText, 10);
  //     value -= 1;
  //   }
  //   this.countTarget.innerText = value;
  // }
}
