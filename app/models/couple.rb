# == Schema Information
#
# Table name: couples
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :integer          not null
#  worker_1_id :integer
#  worker_2_id :integer
#
# Indexes
#
#  index_couples_on_game_id  (game_id)
#
# Foreign Keys
#
#  game_id  (game_id => games.id)
#
class Couple < ApplicationRecord
  belongs_to :game

  def self.create_couples(game_id)

    worker_without_play = nil
    couples_id = Worker.all.map(&:id).shuffle.each_slice(2).to_a
    couples = []
    if couples_id.last.length == 1
      worker_without_play = couples_id.pop
    end
    couples_id.each do |c|
      couples.push(Couple.create!(worker_1_id: c[0], worker_2_id: c[1], game_id: game_id))
    end
    {"worker_without_play": worker_without_play[0], "couples": couples}
  end
end
