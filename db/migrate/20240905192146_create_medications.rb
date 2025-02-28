class CreateMedications < ActiveRecord::Migration[7.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :daily_dosage
      t.references :diagnosis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
