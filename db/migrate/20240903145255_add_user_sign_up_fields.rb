class AddUserSignUpFields < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cns, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :admin, :boolean
  end
end
