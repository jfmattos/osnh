class AddFlagDailyQuestionToUserAnswer < ActiveRecord::Migration[7.1]
  def change
    add_column :user_answers, :daily_question, :boolean, default: false
  end
end
