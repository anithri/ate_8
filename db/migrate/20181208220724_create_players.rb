class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :game_session, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :order

      t.timestamps
    end

  end
end
