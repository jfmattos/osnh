class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :medications

  accepts_nested_attributes_for :medications, reject_if: :all_blank, allow_destroy: true
  validates :disease, presence: true
end
