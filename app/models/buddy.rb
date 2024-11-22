class Buddy < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :first_name, :last_name, :skill, :price, :email, :address, :description, :image,
            presence: { message: "est obligatoire" }
end
