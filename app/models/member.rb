class Member < ApplicationRecord
  belongs_to :club
  has_many :results
  has_many :contests, through: :results
end
