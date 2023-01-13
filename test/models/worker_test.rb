# == Schema Information
#
# Table name: workers
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer          not null
#
# Indexes
#
#  index_workers_on_location_id  (location_id)
#
# Foreign Keys
#
#  location_id  (location_id => locations.id)
#
require "test_helper"

class WorkerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
