class ReplayDateStringToDate < ActiveRecord::Migration[7.1]
  def change
    remove_column :user_answers, :reply_date, :string
    add_column :user_answers, :reply_date, :date
  end
end
