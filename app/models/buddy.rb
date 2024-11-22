class Buddy < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :bookings, dependent: :destroy
  validates :first_name, :last_name, :skill, :price, :email, :address, :description, :image,
            presence: { message: "est obligatoire" }
end
