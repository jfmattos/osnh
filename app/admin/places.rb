ActiveAdmin.register Place do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :email, :opening_hours, :phone_number, :services, :latitude, :longitude
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :email, :opening_hours, :phone_number, :services, :latitude, :longitude]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :name
    column :address
    column :services
    actions
  end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs :name, :address, :email, :opening_hours, :phone_number, :services  # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  filter :name
  filter :address
  filter :services

  show do
    attributes_table_for(resource) do
      row :name
      row :address
      row :email
      row :opening_hours
      row :phone_number
      row :services
    end
  end


end
