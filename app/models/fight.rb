
class Fight < ApplicationRecord
  belongs_to :unicorns, foreign_key: 'firstUnicorn'
  belongs_to :unicorns, foreign_key: 'secondUnicorn'
end