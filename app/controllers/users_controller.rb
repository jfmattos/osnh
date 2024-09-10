class UsersController < ApplicationController
  before_action :authenticate_user!

  def find_question
    whoqol_01 = Survey.last.question.first
    UserAnswer.joins(answer: :question)
              .where(answer: { question_id: whoqol_01 }, reply_date: Date.today)
  end

  def show
    @my_diagnoses = current_user.diagnoses
  end

  private

  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :cns,
                                 :address,
                                 :phone_number,
                                 :email,
                                 :admin,
                                 :photo)
  end

end
