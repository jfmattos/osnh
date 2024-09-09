class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @diagnoses = Diagnosis.all
    @diagnosis = Diagnosis.new
    @my_diagnoses = current_user.diagnoses
    @my_medications = @diagnosis.medications
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :cns, :address, :phone_number, :email, :admin, :photo)
  end

end
