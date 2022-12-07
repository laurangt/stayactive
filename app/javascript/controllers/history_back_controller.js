import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="history-back"
export default class extends Controller {
  static targets = ["backarrow"]
  connect() {
    console.log("hello")
    console.log(this.backarrowTarget)
  }

  back(){
    history.back();
    location.reload;
  }
}
