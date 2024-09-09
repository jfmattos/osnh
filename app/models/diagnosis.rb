class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :medications,  dependent: :destroy

  accepts_nested_attributes_for :medications, allow_destroy: true, reject_if: :all_blank

  validates :disease, presence: true
end
