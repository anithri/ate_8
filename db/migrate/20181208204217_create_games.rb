
class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, unique: true
      t.integer :turn, default: 0, null: false
      t.integer :phase, default: 0, null: false
      t.datetime :finished_at, index: true

      t.timestamps
    end
  end
end
