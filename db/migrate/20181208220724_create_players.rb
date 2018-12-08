class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :order

      t.timestamps
    end

    add_index :players, [:game_id, :user_id], unique: true
  end
end
