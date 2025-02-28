class CreateUserAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :user_answers do |t|
      t.string :reply_date
      t.references :answer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
