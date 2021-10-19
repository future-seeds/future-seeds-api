require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:seeds) }
    it { should have_many(:journal_entries) }
  end

  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_length_of(:first_name).is_at_least(1).is_at_most(50) }

    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:last_name).is_at_least(1).is_at_most(50) }

    it { should validate_presence_of(:city) }
    it { should validate_length_of(:city).is_at_least(1).is_at_most(50) }

    it { should validate_presence_of(:state) }
    it { should validate_length_of(:state).is_equal_to(2) }

    it { should validate_presence_of(:intentions) }
    it { should validate_length_of(:intentions).is_at_least(1).is_at_most(100) }
  end
end
