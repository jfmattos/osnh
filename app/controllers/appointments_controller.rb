class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[create edit update destroy]
  before_action :set_appointment, only: %i[show index]

  def index
    @appointments = Appointment.all
    start_date = params.fetch(:start_date, Date.today).to_date
    @appointments = Appointment.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_path(@appointment) }
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "appointments/new", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
