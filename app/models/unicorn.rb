class Unicorn < ApplicationRecord
  belongs_to :clan, optional: true
  has_one :living_space, optional: true # optional for now

  has_many :poison_unicorns
  has_many :poisons, :through => :poison_unicorns

  has_many :aptitudes
end