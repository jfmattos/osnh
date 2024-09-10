ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :cns, :address, :phone_number, :admin
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :cns, :address, :phone_number, :admin]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  remove_filter :photo_attachment, :photo_blob

  index do
    column :first_name
    column :last_name
    column :phone_number
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :admin


  show do
    attributes_table_for(resource) do
      row :first_name
      row :last_name
      row :phone_number
      row :email
      row :address
      row :cns
      row :admin
    end
  end

end
