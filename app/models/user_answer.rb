class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  # validates :reply_date, presence: true
end
