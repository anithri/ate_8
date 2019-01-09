class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :game_session, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :order
      t.jsonb :seat_contents, null: false, default: ::Game::Seat::DEFAULT_SEAT

      t.timestamps
    end

  end
end
