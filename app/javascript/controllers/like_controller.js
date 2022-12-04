import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="like"
export default class extends Controller {
  static targets = ["count"]
  static values = { group: Number, heart: Number }

  connect() {
    console.log(this.groupValue);
    console.log(this.heartValue);
  }

  add(event) {
    event.preventDefault();
    fetch(`/groups/${this.groupValue}/hearts`)
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

  remove(event){
    event.preventDefault();
    fetch(`/groups/${this.groupValue}/hearts/${this.heartValue}`)
    .then(value => Number(value))
    let value;
    if (this.countTarget.innerText === "0") {
      value = 0;
    } else {
      value = parseInt(this.countTarget.innerText, 10);
      value -= 1;
    }
    this.countTarget.innerText = value;
  }
}
