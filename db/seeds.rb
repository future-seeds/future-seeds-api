# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include FactoryBot::Syntax::Methods

JournalEntry.destroy_all
Seed.destroy_all
User.destroy_all

# Users
user1 = create(:user)
user2 = create(:user)
user3 = create(:user)
user4 = create(:user)
user5 = create(:user)

# seeds
seed1 = create(:seed, user: user1)
seed2 = create(:seed, user: user1)
seed3 = create(:seed, user: user1)
seed4 = create(:seed, user: user2)
seed5 = create(:seed, user: user2)
seed6 = create(:seed, user: user3)
seed7 = create(:seed, user: user3)
seed8 = create(:seed, user: user4)
seed9 = create(:seed, user: user4)
seed10 = create(:seed, user: user4)

# Journal entries
entry1 = create(:journal_entry, user: user1)
entry2 = create(:journal_entry, user: user1)
entry3 = create(:journal_entry, user: user1)
entry4 = create(:journal_entry, user: user2)
entry5 = create(:journal_entry, user: user2)
entry6 = create(:journal_entry, user: user3)
entry7 = create(:journal_entry, user: user3)
entry8 = create(:journal_entry, user: user4)
entry9 = create(:journal_entry, user: user4)
entry10 = create(:journal_entry, user: user4)
