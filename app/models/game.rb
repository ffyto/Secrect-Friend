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
  #validates :couples, presence: true
  #callback
  after_create :start_game

  def start_game
    couples_data = Couple.create_couples(self.id)
    #El self es ahora el registro que está siendo modificado por estar dentro del callback
    self.couples = couples_data[:couples]
    self.worker_without_play = couples_data[:worker_without_play]
    self.save
  end
end
