require 'rails_helper'

RSpec.describe Venue, type: :model do
  it { is_expected.to validate_presence_of :address }
  it { is_expected.to have_many :meeting }
end
