class DailyQuestionsController < ApplicationController

  def create
    # raise
    @daily_question = UserAnswer.new(daily_question_params)
    @daily_question.user = current_user
    @daily_question.reply_date = Date.today
    
    if @daily_question.save
      redirect_to user_path(current_user)
      flash[:alert] = "Daily question completed!"
    end
  end

  def new
    @question = Survey.last.questions.first
    @daily_question = UserAnswer.new()
  end

  private

  def daily_question_params
    params.require(:daily_questions).permit(:answer_id)
  end
end
