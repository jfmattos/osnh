class UsersController < ApplicationController
  def show

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :cns, :address, :phone_number, :email, :admin)
  end
end
