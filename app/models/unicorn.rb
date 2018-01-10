class Unicorn < ApplicationRecord
  belongs_to :clan, optional: true
  has_one :living_space
  has_many :poisons
  has_many :aptitudes
end