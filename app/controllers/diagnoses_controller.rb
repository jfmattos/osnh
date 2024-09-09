class DiagnosesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_diagnosis, only: %i[edit destroy]

  def index
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses
  end

  def new
    @diagnosis = Diagnosis.new
    5.times { @diagnosis.medications.build }
  end

  def edit

  end

  def create
    @diagnosis = Diagnosis.new(diagnosis_params)
    @diagnosis.user_id = current_user.id
    if @diagnosis.save
      redirect_to user_path(@diagnosis.user_id), notice: "Diagnosis was successfully created.", status: :see_other
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    if @diagnosis.update(diagnosis_params)
      redirect_to user_path(@diagnosis.user_id), notice: "Diagnosis was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @diagnosis.destroy
      redirect_to user_path, status: :see_other, notice: "Diagnosis was successfully destroyed."
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  private

  def set_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def diagnosis_params
    params.require(:diagnosis).permit(:disease, medications_attributes: %i[id name daily_dosage])
  end
end
