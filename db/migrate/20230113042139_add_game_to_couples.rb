class AddGameToCouples < ActiveRecord::Migration[7.0]
  def change
    add_reference :couples, :game, null: false, foreign_key: true
  end
end
