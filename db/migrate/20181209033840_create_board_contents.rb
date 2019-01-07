class CreateBoardContents < ActiveRecord::Migration[5.2]
  def change
    create_table :board_contents do |t|
      t.references :game_session, foreign_key: true
      t.string :tile_id, null: false, index: true
      t.jsonb :deck_contents, null: false, default: ::Game::Deck::DEFAULT_DECK
      t.jsonb :bag_contents, null: false, default: ::Game::Bag::DEFAULT_BAG
      t.timestamps
    end
  end
end
