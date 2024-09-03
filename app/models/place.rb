class Place < ApplicationRecord
  validates :name, :address, :services, :opening_hours, presence: true
end
