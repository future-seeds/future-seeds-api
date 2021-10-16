class User < ApplicationRecord
  has_many :seeds
  has_many :journal_entries

  validates :first_name, presence: true, length: { in: 1..50 }
  validates :last_name, presence: true, length: { in: 1..50 }
  validates :city, presence: true, length: { in: 1..50 }
  validates :state, presence: true, length: { is: 2 }
  validates :intentions, presence: true, length: { in: 1..50 }
end
