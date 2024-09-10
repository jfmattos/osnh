import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nested-input"
export default class extends Controller {
  static targets = ['medFields', 'medList']
  static values = {
    medicationId: Number
  }
  connect() {
    if (this.medListTarget.childElementCount === 0) {
      const firstMed = `<div class="row" data-nested-input-target="medFields">
    <div class="col-11">
      <div class="row">
        <div class="col-5 border-0 rounded-5">
          <div class="mb-3 string required diagnosis_medications_name"><input class="form-control string required" placeholder="Medication" type="text" name="diagnosis[medications_attributes][0][name]" id="diagnosis_medications_attributes_0_name"></div>
        </div>
        <div class="col-6 border-0 rounded-5">
          <div class="mb-3 string required diagnosis_medications_daily_dosage"><input class="form-control string required" placeholder="Daily dosage" type="text" name="diagnosis[medications_attributes][0][daily_dosage]" id="diagnosis_medications_attributes_0_daily_dosage"></div>
        </div>
      </div>
    </div>
    <div class="col-1">
    </div>
  </div>`;
      this.medListTarget.insertAdjacentHTML("beforeend", firstMed);
    }
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
