import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="remove-input"
export default class extends Controller {
  static targets = ["medFields"]
  connect() {
    console.log(this.medFieldsTarget)
  }
  add(event) {
    event.preventDefault()
  }
}
