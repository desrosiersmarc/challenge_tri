class Calculation < ApplicationRecord
  belongs_to :league
  has_many :results
end
