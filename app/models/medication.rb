class Medication < ApplicationRecord
  belongs_to :diagnosis

  validates :name, :daily_dosage, presence: true
end
