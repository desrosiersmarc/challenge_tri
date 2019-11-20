class League < ApplicationRecord
  has_many :users
  has_many :clubs
  has_many :contests
end
