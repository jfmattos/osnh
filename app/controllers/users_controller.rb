class UsersController < ApplicationController
  before_action :authenticate_user!

  def answered?
    whoqol_01 = Survey.last.questions.first
    answers = UserAnswer.joins(answer: :question)
              .where(answer: { question_id: whoqol_01 }, reply_date: Date.today)
    answers != []
  end

  def show
    @user = current_user
    if answered?
      @my_diagnoses = current_user.diagnoses
    else
      redirect_to new_daily_question_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:address,
                                 :admin,
                                 :cns,
                                 :email,
                                 :first_name,
                                 :last_name,
                                 :phone_number,
                                 :photo)
  end

end
