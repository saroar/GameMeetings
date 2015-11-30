class CreateGamesMeetings < ActiveRecord::Migration
  def change
    create_table :games_meetings do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
