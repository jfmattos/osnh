class MedicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_medication, only: :destroy

  def destroy
    if @medication.destroy
      redirect_to diagnosis_path(@medication.diagnosis), status: :see_other
    end
  end

  private

  def set_medication
    @medication = Medication.find(params[:id])
  end
end
