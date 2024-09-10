class Place < ApplicationRecord
  validates :name, :address, :services, :opening_hours, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by,
  against: [ :name, :address ],
  using: {
  tsearch: { prefix: true }
  }

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "email", "id", "id_value", "latitude", "longitude", "name", "opening_hours", "phone_number", "services", "updated_at"]
  end
end
