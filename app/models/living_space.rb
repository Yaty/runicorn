class LivingSpace < ApplicationRecord
  has_many :unicorns
  has_one :clan
end
