import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="like"
export default class extends Controller {
  static targets = ["count"]
  connect() {
    console.log("Hello")
  }

  // hello() {
  //   .fetch(/second )
  //   let value;
  //   if (this.countTarget.innerText === "0") {
  //     value = 0;
  //   } else {
  //     value = parseInt(this.countTarget.innerText, 10);
  //   }
  //   value += 1;
  //   this.countTarget.innerText = value;
  // }
}
