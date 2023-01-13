# == Schema Information
#
# Table name: games
#
#  id                  :integer          not null, primary key
#  worker_without_play :integer
#  year_game           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Game < ApplicationRecord
  has_many :couples
  validates :year_game, numericality: {
    greater_than_or_equal_to: 2022, message: 'El año debe ser mayor o igual a 2022.'
  }
  validates :year_game, numericality: {
    less_than_or_equal_to: 2031, message: 'El año debe ser menor o igual a 2031.'
  }

  #validates :couples, presence: true
  #callback
  after_create :start_game

  def start_game
    couples_data = Couple.create_couples(self.id, self.year_game)
    #El self es ahora el registro que está siendo modificado por estar dentro del callback
    self.couples = couples_data[:couples]
    self.worker_without_play = couples_data[:worker_without_play]
    self.save
  end
end
