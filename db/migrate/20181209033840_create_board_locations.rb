class CreateBoardLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :board_data do |t|
      t.references :game_datum, foreign_key: true
      t.string :location_id
      t.string :card_ids, array: true, default: []
      t.string :worker_ids, array: true, default: []
      t.timestamps
    end

  end
end
