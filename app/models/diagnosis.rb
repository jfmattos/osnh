class Diagnosis < ApplicationRecord
  belongs_to :user
  validates :disease, :medication, presence: true
end
