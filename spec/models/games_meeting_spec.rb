require 'rails_helper'

RSpec.describe GamesMeeting, type: :model do
  it { is_expected.to belong_to :meeting }
  it { is_expected.to belong_to :game }
end
