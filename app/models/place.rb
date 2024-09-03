class Place < ApplicationRecord
  validates :name, :address, :services, :opening_hours, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
