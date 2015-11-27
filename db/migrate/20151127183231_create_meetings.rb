class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.date :game_date
      t.datetime :start_play_time
      t.datetime :end_play_time

      t.timestamps
    end
  end
end
