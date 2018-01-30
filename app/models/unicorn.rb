class Unicorn < ApplicationRecord
  belongs_to :clan, optional: true
  belongs_to :living_space

  has_many :poison_unicorns
  has_many :poisons, :through => :poison_unicorns

  has_many :aptitudes
  accepts_nested_attributes_for :aptitudes
end