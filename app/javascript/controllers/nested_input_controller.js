import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nested-input"
export default class extends Controller {
  static targets = ['medFields', 'medList']
  static values = {
    medicationId: Number
  }
  connect() {

  };

  add(event) {
    event.preventDefault()
    let clone = this.medFieldsTarget.cloneNode(true);
    const inputs = clone.querySelectorAll('input')
    const newIndex = this.medListTarget.childElementCount
    inputs.forEach(input => {
      const nameIndex = input.name.search('\d+')
      const idIndex = input.id.search('\d+')
      const newName = input.name.replace(nameIndex, newIndex)
      const newId = input.id.replace(idIndex, newIndex)
      input.name = newName
      input.id = newId
      input.value = ""
    });
    const last_element = inputs[inputs.length - 1];
    last_element.value = this.medicationIdValue
    this.medListTarget.appendChild(clone)
  }

}
