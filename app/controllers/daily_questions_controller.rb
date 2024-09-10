class DailyQuestionsController < ApplicationController
  before_action :set_survery

  def create
    @daily_question = UserAnswer.new(daily_question_params)
    @daily_question.user = current_user
    @daily_question.reply_date = Date.today

    redirect_to user_path(current_user)
    # flash[:alert] = "Formulário completo!"
  end

  def new
    @question = @survey.questions[params[:question_index].to_i]
    @daily_question = UserAnswer.new()
  end

  private

  def set_survery
    @survey = Survey.find(params[:survey_id])
  end

  def daily_question_params
    params.require(:daily_question).permit(:answer_id)
  end
end
