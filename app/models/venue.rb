class Venue < ActiveRecord::Base
  has_many :meeting
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
