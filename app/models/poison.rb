class Poison < ApplicationRecord
  has_many :poison_unicorns
  has_many :unicorns, :through => :poison_unicorns
end
