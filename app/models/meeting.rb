class Meeting < ActiveRecord::Base
  validates :title, :description, :game_date,
  :start_play_time, :end_play_time, :venue_id, presence: true
  belongs_to :venue
  has_and_belongs_to_many :games
end
