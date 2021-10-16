require 'rails_helper'

RSpec.describe Seed, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_presence_of(:planting_depth) }
    it { should validate_length_of(:planting_depth).is_at_least(1).is_at_most(20) }
    it { should validate_presence_of(:days_to_germinate) }
    it { should validate_length_of(:days_to_germinate).is_at_least(1).is_at_most(20) }
    it { should validate_presence_of(:time_to_harvest) }
    it { should validate_length_of(:time_to_harvest).is_at_least(1).is_at_most(20) }
    it { should validate_presence_of(:date_planted) }
    it { should validate_length_of(:date_planted).is_at_least(1).is_at_most(20) }
    it { should validate_presence_of(:sun_exposure) }
    it { should define_enum_for(:sun_exposure).with_values(['Full sun', 'Part shade', 'Full shade', 'Unknown']) }
    it { should validate_presence_of(:expected_plant_height) }
    it { should validate_length_of(:expected_plant_height).is_at_least(1).is_at_most(20) }
    it { should validate_presence_of(:notes) }
    it { should validate_length_of(:notes).is_at_least(1).is_at_most(140) }
  end
end
