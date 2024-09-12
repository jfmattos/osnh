class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  # validates :title, :interval_days, presence: true

  # validates :interval_days, numericality: { greater_than: 0 }
  # ---------------------------------
  # ChatGPT custom validation code 👇
  # ---------------------------------

  validate :integer_array_items_are_positive_integers

  # Serialize the array so that it's stored as a text column in the database
  # serialize :integer_array, Array

  private

  def integer_array_items_are_positive_integers
    if interval_days.present?
      interval_days.each do |item|
        unless item.is_a?(Integer) && item.positive?
          errors.add(:interval_days, "contains an invalid item: #{item.inspect}")
        end
      end
    end
  end
end
