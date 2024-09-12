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
    @user_answers = UserAnswer.all
    @all_answers = Answer.all
    @daily_answers = @all_answers.where(question_id: 1)
    @my_answers = current_user.user_answers
    @my_das = @my_answers.where(daily_question: true)
    @my_da = @my_das.each

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
