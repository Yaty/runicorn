class Clan < ApplicationRecord
  has_many :unicorns
  has_many :living_spaces
  belongs_to :unicorn
end
