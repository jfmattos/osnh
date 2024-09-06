class SurveysController < ApplicationController
  before_action :set_survey, only: %i[show destroy]

  def index
    @survey = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
  end

  def destroy
    @survey.destroy
  end

  def show
    @user_answer = UserAnswer.new
  end

  private

  def survey_params
    params.require(:survey).permit(:title, :interval_days)
  end

  def set_survey
    @survey = Survey.find(params[:id])
  end
end
