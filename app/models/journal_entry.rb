# frozen_string_literal: true

class JournalEntry < ApplicationRecord
  belongs_to :user

  validates :date, presence: true, length: { is: 10 }
  validates :description, presence: true, length: { in: 1..500 }
end
