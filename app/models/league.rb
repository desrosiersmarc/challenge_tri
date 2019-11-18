class League < ApplicationRecord
  has_many :users
  has_many :clubs
end
