class Contest < ApplicationRecord
  belongs_to :user
  belongs_to :league

  validates :name, presence: true, length: {maximum: 60, minimum: 5}
  validates :location, presence: true, length: {maximum: 60, minimum: 3}
  validates :date, presence: true

end
