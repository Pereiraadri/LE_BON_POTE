class Buddy < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
