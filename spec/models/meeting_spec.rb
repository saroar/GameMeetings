require 'rails_helper'

RSpec.describe Meeting, type: :model do
  it { is_expected.to have_attribute :title }
  it { is_expected.to validate_presence_of :title }

  it { is_expected.to belong_to :venue }
  it { is_expected.to have_and_belong_to_many :games }
end
