class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :interval_days, array: true, default: []

      t.timestamps
    end
  end
end
