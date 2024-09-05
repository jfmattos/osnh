class UserAnswersController < ApplicationController
  before_action :set_survery
  
  def create
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    # question_index >= @survey.questions.length - 1
    if @user_answer.save
      question_index = params["user_answer"]["question_index"]
      redirect_to new_survey_user_answer_path(@survey, question_index: question_index)
    end

    # raise
  end
  
  def new
    # raise
    @question = @survey.questions[params[:question_index].to_i]
    @user_answer = UserAnswer.new()
  end
  
  private
  
  def set_survery
    @survey = Survey.find(params[:survey_id])
  end
  
  def user_answer_params
    params.require(:user_answer).permit(:answer_id)
  end
end
