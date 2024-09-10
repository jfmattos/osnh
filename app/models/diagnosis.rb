class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :Medication

  validates :disease, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "disease", "id", "id_value", "updated_at", "user_id"]
  end
end
