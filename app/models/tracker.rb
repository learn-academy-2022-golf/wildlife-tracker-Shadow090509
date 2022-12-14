class Tracker < ApplicationRecord
  belongs_to :animal
  validate :latitude, :longitude, :date, presence: true
end
