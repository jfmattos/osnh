class MedicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_medication, only: :destroy

  def destroy

  end

  private

  def set_medication
    @medication = Medication.find(params[:id])
  end
end
