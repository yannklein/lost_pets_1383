class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "bird", "snake", "capibara", "horse"]
  GENDER = ["male",  "female", "other"]
  validates :name, :species, :color, :location, :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }
end
