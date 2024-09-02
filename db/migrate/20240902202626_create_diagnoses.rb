class CreateDiagnoses < ActiveRecord::Migration[7.1]
  def change
    create_table :diagnoses do |t|
      t.string :disease
      t.string :medication
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
