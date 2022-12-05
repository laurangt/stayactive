import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "endTime" ]

  connect() {
    console.log('connected!');
    flatpickr(this.endTimeTarget, {})
  }
}
