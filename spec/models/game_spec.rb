require 'rails_helper'

RSpec.describe Game, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to have_and_belong_to_many :meetings }
end
