import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="forms"
export default class extends Controller {
  static targets = ["form"]
  
  connect() {
  }
  submit(event) {
    this.formTarget.submit()
  }
}
