class DiagnosisController < ApplicationController
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
    @diagnosis.user = current_user
    if @diagnosis.save
      redirect_to user_path
    else
      render 'users/show', status: :unprocessable_entity
    end
  end

# ADDING THE EDIT AND UPDATE

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
    if @diagnosis.destroy
      redirect_to user_path, status: :see_other, notice: "Diagnosis was successfully destroyed."
    else
      render 'show', status: :unprocessable_entity
    end
  end

  def show
    @diagnosis = Diagnosis.new
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses
  end

  private

  def set_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def diagnosis_params
    params.require(:diagnosis).permit(:disease, :medication)
  end
end
