class GamesMeeting < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :game
end
