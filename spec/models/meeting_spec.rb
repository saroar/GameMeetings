require 'rails_helper'

RSpec.describe Meeting, type: :model do
  attribute = %w(title description game_date start_play_time end_play_time)
  attribute.each do |a|
    it { is_expected.to have_attribute a }
    it { is_expected.to validate_presence_of a }
  end

  it { is_expected.to belong_to :venue }
  it { is_expected.to have_and_belong_to_many :games }
end
