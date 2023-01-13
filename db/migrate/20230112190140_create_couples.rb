class CreateCouples < ActiveRecord::Migration[7.0]
  def change
    create_table :couples do |t|
      t.integer :worker_1_id
      t.integer :worker_2_id

      t.timestamps
    end
  end
end
