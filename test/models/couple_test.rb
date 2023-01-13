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
require "test_helper"

class CoupleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
