import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="history-back"
export default class extends Controller {
  static targets = ["arrow"]

  connect() {
    console.log("hello")
    console.log(this.arrowTarget)
  }

  back(){
    history.back();
    location.reload;
  }
}
