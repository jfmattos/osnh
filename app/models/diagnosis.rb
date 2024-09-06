class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :Medication

  validates :disease, presence: true
end
