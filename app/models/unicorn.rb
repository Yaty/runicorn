class Unicorn < ApplicationRecord
  enum sex: [ :male, :female ]
  belongs_to :clan
  has_one :living_space
  has_many :poisons
  has_many :aptitudes
end