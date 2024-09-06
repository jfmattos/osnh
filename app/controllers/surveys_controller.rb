class SurveysController < ApplicationController
  before_action :set_survery, only: %i[destroy show]
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :destroy, :show]

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

  def set_survery
    @survey = Survey.find(params[:id])
  end
end
