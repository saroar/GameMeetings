class Venue < ActiveRecord::Base
  belongs_to :meeting
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
