require 'rails_helper'

RSpec.describe JournalEntry, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:date) }
    it { should validate_length_of(:date).is_equal_to(10) }

    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(500) }
  end

  describe 'factory bot creation' do
    before(:all) do
      # @user1 = create(:user)
      @journal_entry1 = create(:journal_entry)
    end

    it 'is valid with attributes' do
      expect(@journal_entry1).to be_valid
    end
  end
end
