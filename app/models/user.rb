class User < ApplicationRecord
  has_many :seeds
  has_many :journal_entries
end
