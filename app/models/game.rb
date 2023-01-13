class Game < ApplicationRecord
  has_many :couples
  validates :couples, presence: true
end
