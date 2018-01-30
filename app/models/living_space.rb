class LivingSpace < ApplicationRecord
  has_many :unicorns
  belongs_to :clan, optional: true
end
