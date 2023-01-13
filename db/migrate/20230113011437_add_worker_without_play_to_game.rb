class AddWorkerWithoutPlayToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :worker_without_play, :integer
  end
end
