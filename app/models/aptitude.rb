class Aptitude < ApplicationRecord
  enum aptitude: [ :warrior, :alchimist, :axman, :miner, :farmer ]
end
