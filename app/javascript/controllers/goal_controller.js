import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "completed" ]
  static values = { updateUrl: String }

  connect() {
    console.log("hello")
    console.log( this.updateUrlValue)
  }
  toggle(event) {
    let formData = new FormData()
    formData.append("goal[completed]", this.completedTarget.checked);
  }
  // fetch(this.data.get("update-url"), {
  //   body: formData,
  //   method: 'PATCH',
  //   credentials: "include",
  //   dataType: "script",
  //   headers: {
  //     "X-CSRF-Token": getMetaValue("csrf-token")
  //   },
  // };
}
