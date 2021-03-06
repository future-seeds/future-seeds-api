# frozen_string_literal: true

class Seed < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { in: 1..50 }
  validates :planting_depth, presence: true, length: { in: 1..20 }
  validates :days_to_germinate, presence: true, length: { in: 1..20 }
  validates :time_to_harvest, presence: true, length: { in: 1..20 }
  validates :date_planted, presence: true, length: { in: 1..20 }
  enum sun_exposure: { 'Full sun' => 0,
                       'Part shade' => 1,
                       'Full shade' => 2,
                       'Unknown' => 3 }
  validates :expected_plant_height, presence: true, length: { in: 1..20 }
  validates :notes, presence: true, length: { in: 1..200 }
end
