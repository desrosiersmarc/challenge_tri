class Club < ApplicationRecord
  belongs_to :league
  has_many :members
end
