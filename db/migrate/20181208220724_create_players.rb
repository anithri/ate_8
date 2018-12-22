class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :player_data do |t|
      t.references :game_datum, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :order

      t.timestamps
    end

  end
end
