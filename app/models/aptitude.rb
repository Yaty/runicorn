class Aptitude < ApplicationRecord
  has_one :unicorn
  enum aptitude: [ :warrior, :alchimist, :axman, :miner, :farmer ]
end
