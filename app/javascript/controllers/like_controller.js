import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="like"
export default class extends Controller {
  static targets = ["count"]
  // static values = { Group:String }

  connect() {
    console.log("Hello")
    // console.log(this.GroupValue)
  }

  hello() {
    // .fetch(`/groups/${this.countTarget.}/hearts`)
    // new FetchRequest('post', this.GroupValue)
    let value;
    if (this.countTarget.innerText === "0") {
      value = 0;
    } else {
      value = parseInt(this.countTarget.innerText, 10);
    }
    value += 1;
    this.countTarget.innerText = value;
  }
}

// const request = new FetchRequest('patch', this.updateUrlValue)
//     request.perform()
