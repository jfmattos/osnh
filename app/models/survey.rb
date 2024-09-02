class Survey < ApplicationRecord
  has_many :questions
  validates :title, :interval_days, presence: true
  validates :interval_days, numericality: { greater_than: 0 }
end
