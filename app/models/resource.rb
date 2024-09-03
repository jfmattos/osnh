class Resource < ApplicationRecord
  validates :name, :details, presence: true
end
