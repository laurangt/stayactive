import { Controller } from "@hotwired/stimulus"
import ProgressBar from 'progressbar.js'

// Connects to data-controller="progressbar"
export default class extends Controller {
  static targets = ["progressbar"]
  static values = { percentage: Number }

  connect() {
    console.log(this.percentageValue)
    const line = new ProgressBar.Line(this.progressbarTarget, {
      color: '#DBF193',
      trailColor: '#eaa8ee',
      strokeWidth: 2,
      duration: 3000,
      easing: 'easeInOut',
      svgStyle: {
        display: 'block',
        width: '100%' // ${this.percentageValue} to be % of goals doe if goal.status = true
    },

  });

  line.animate(this.percentageValue);
  }
}
