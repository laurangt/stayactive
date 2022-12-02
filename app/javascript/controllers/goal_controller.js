import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from '@rails/request.js'
export default class extends Controller {
  static targets = [ "status" ]
  static values = { updateUrl: String }

  connect() {
    console.log("hello")
    console.log( this.updateUrlValue)
  }
  toggle(event) {
    const request = new FetchRequest('patch', this.updateUrlValue)
    request.perform()
      // .then(response => response.json())
      // .then((data) => {
      //   console.log(data)
      // })
    // patch request (use fetch) to goal/id (update URL)
    // goals controller update action, update status of goal/id

  // fetch(this.data.get("update-url"), {
  //   body: formData,
  //   method: 'PATCH',
  //   credentials: "include",
  //   dataType: "script",
  //   headers: {
  //     "X-CSRF-Token": getMetaValue("csrf-token")
  //   },
  // };
}}
