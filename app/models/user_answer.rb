class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  # validates :reply_date, presence: true
  def self.ransackable_attributes(auth_object = nil)
    ["answer_id", "created_at", "id", "id_value", "reply_date", "updated_at", "user_id"]
  end
end
