class AddVenueIdToMeeting < ActiveRecord::Migration
  def change
    add_reference :meetings, :venue, index: true, foreign_key: true
  end
end
