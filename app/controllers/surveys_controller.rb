class SurveysController < ApplicationController
  before_action :set_survery, only: %i[destroy]
  
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

  private

  def survey_params
    params.require(:survey).permit(:title, :interval_days)
  end

  def set_survery
    @survey = Survey.find(params[:id])
  end
end
