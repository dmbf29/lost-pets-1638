class Pet < ApplicationRecord
  # associations
  # validations
  SPECIES = ['cat', 'dog', 'hamster', 'snake', 'rabbit', 'fish']
  validates :species, inclusion: { in: SPECIES }
end

# Pet::SPECIES
