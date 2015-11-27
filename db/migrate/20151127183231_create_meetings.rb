class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
