class Result < ApplicationRecord
  belongs_to :contest
  belongs_to :calculation
  belongs_to :member

  has_many :calculations

end
