class CreateBoardLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :board_data do |t|
      t.references :game_datum, foreign_key: true
      t.string :location_id
      t.jsonb :deck_data, null: false, default: ::Board::Deck::DEFAULT_DECK
      t.jsonb :bag_data, null: false, default: ::Board::Bag::DEFAULT_BAG
      t.timestamps
    end
  end
end
