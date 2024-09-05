class DiagnosesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_diagnosis, only: %i[edit update destroy]

  def index
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses
  end

  def new
    @diagnosis = Diagnosis.new
  end

  def create
    @diagnosis = Diagnosis.new(diagnosis_params)
    if @diagnosis.save
      redirect_to user_path(@user)
    else
      render 'new', status: :unprocessable_entry
    end
  end

  def show
    @diagnosis = Diagnosis.new
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses
  end

  def edit

  end

  def update
    if @diagnosis.update(diagnosis_params)
      redirect_to user_path, notice: "Diagnosis was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @diagnosis = Diagnosis.find(params[:id])
    @diagnosis.destroy

    redirect_to user_path, status: :see_other
  end

  private

  def set_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def diagnosis_params
    params.require(:diagnosis).permit(:disease, :medication)
  end
end
