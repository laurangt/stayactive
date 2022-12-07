import { Controller } from "@hotwired/stimulus"
import ProgressBar from 'progressbar.js'

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets=["progressbar"]

  connect() {
    console.log(this.ele)
    const line = new ProgressBar.Line(this.progressbarTarget, {
      color: '#FCB03C',
      duration: 3000,
      easing: 'easeInOut'
  });

  line.animate(1);
  }
}
