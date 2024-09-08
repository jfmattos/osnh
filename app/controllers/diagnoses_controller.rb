class DiagnosesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_diagnosis, only: %i[show edit update destroy]

  def index
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses
  end

  def new
    @diagnosis = Diagnosis.new
    @medication = Medication.new
  end

  def create
    @diagnosis = Diagnosis.new(diagnosis_params)
    @diagnosis.user_id = current_user.id
    if @diagnosis.save
      redirect_to user_path(@diagnosis.user_id)
    else
      render 'new', status: :unprocessable_entry
    end
  end

  def show
    @diagnosis = Diagnosis.new
    @diagnoses = Diagnosis.all
    @my_diagnoses = current_user.diagnoses


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diagnosis }
    end
  end

  def edit
    @medication = Medication.new
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
    params.require(:diagnosis).permit(:disease, medications_attributes: %i[id name daily_dosage _destroy])
  end
end
