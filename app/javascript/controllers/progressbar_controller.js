import { Controller } from "@hotwired/stimulus"
import ProgressBar from 'progressbar.js'

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets=["progressbar"]

  connect() {
    console.log(this.ele)
    const line = new ProgressBar.Line(this.progressbarTarget, {
      color: '#DBF193',
      trailColor: '#000',
      strokeWidth: 3,
      duration: 3000,
      easing: 'easeInOut',
      style: {
        position: 'absolute',
        bottom: 0
      }
  });

  line.animate(1);
  }
}
