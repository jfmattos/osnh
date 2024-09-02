class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
