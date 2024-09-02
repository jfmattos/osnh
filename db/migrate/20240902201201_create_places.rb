class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :opening_hours
      t.string :phone_number
      t.text :services

      t.timestamps
    end
  end
end
