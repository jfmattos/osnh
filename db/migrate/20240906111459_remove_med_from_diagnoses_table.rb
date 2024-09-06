class RemoveMedFromDiagnosesTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :diagnoses, :medication, :string
  end
end
