FactoryGirl.define do
  factory :meeting do
    title 'HI'
    description 'Hello'
    venue
    game_date Time.zone.now
    start_play_time Time.now
    end_play_time (Time.now + 3600)
  end
end
