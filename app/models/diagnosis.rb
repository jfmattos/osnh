class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :medications, dependent: :destroy

  accepts_nested_attributes_for :medications, allow_destroy: true, reject_if: :all_blank

  validates :disease, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "disease", "id", "id_value", "updated_at", "user_id"]
  end
end
