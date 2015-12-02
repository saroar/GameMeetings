class Venue < ActiveRecord::Base
  validates :address, presence: true
  has_many :meeting
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
