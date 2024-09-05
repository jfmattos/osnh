if @appointment.persisted?
  json.form render(partial: "appointments/form", formats: :html, locals: {appointment: Appointment.new})
  json.inserted_item render(partial: "appointments/appointment", formats: :html, locals: {appointment: @appointment})
else
  json.form render(partial: "appointments/form", formats: :html, locals: {appointment: @appointment})
end
