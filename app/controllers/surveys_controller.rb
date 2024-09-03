class SurveysController < ApplicationController
  def index
    @survey = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
  end

  private

  def survey_params
    params.require(:survey).permit(:title, :interval_days)
  end
end
