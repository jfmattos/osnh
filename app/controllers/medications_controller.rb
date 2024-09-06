class MedicationController < ApplicationController
  before_action :authenticate_user!
  before_action :set_diagnosis
  before_action :set_medication, only: %i[edit update destroy]

  def new
    @medication = Medications.new
  end

  def create
    @medication = Medication.create! medication_params
    if @medication.save
      redirect_to edit_diagnosis_path(@medication.diagnosis_id), notice: "Medication was successfully added.", status: :see_other
    else
      render 'new', status: :unprocessable_entry
    end
  end

  def edit

  end

  def update
    @medication.update! medication_params
    if @medication.update(medication_params)
      redirect_to edit_diagnosis_path(@medication.diagnosis_id), notice: "Medication was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @medication.destroy!
    if @medication.destroy
      redirect_to edit_diagnosis_path, status: :see_other, notice: "Medication was successfully destroyed."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_diagnosis
    @diagnosis = Diagnosis.find(params[:diagnosis_id])
  end

  def set_medication
    @medication = Medication.find(params[:id])
  end

  def medication_params
    params.require(:medication).permit(:name, :daily_dosage, :diagnosis_id)
  end
end
