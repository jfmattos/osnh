class UserAnswersController < ApplicationController
  before_action :set_survery

  def create
    # binding.b
    @user_answer = UserAnswer.new(user_answer_params)
    @user_answer.user = current_user
    
    question_index = params[:user_answer][:question_index].to_i
    survey_length = @survey.questions.length - 1
    
    if question_index <= survey_length
      if @user_answer.save
        redirect_to new_survey_user_answer_path(@survey, question_index: question_index)
      end
    else
      redirect_to user_path(current_user)
      flash[:alert] = "Formulário completo!"
    end
  end

  def new
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
