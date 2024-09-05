class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @my_diagnoses = current_user.diagnosis
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :cns, :address, :phone_number, :email, :admin, :photo)
  end

end
