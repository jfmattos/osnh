class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diagnoses, dependent: :destroy
  has_many :medication, through: :diagnoses
  has_many :user_answers, dependent: :destroy
  has_one_attached :photo

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :cns, :address, :phone_number, presence: true

  validates :cns, :email, uniqueness: true

  validates :cns, length: { minimum: 15, maximum: 15, message: 'Your CNS must be 15 numbers long' }
  validate :string_only_contain_numbers

  def string_only_contain_numbers
    if cns.nil?
      errors.add(:cns, 'cannot be blank')
    else
      string_numbers = (0..9).to_a.join('').to_s.split('')
      cns_chars = cns.split('')
      cns_chars.each do |num|
        errors.add(:cns, 'can only contain valid numbers (0-9).') unless string_numbers.include?(num)
      end
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["address", "admin", "cns", "created_at", "email", "encrypted_password", "first_name", "id", "id_value", "last_name", "phone_number", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["diagnoses", "photo_attachment", "photo_blob", "user_answers"]
  end

end
