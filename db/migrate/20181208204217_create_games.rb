
class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, unique: true
      t.hstore :position
      t.datetime :finished_at, index: true

      t.timestamps
    end
  end
end
