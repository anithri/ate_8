class CreateBoardLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :board_locations do |t|
      t.references :game, foreign_key: true
      t.integer :location_id
      t.string :card_ids, array: true, default: []
      t.string :worker_ids, array: true, default: []
      t.timestamps
    end

    add_index :board_locations, [:game_id, :location_id], unique: true
  end
end
