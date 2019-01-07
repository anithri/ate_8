
class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.string :name, unique: true
      t.integer :turn, default: 0, null: false
      t.integer :phase, default: 0, null: false
      t.datetime :finished_at, index: true

      t.timestamps
    end
  end
end
