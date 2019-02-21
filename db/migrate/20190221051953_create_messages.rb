class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :icon
      t.integer :theme
      t.references :game_session, foreign_key: true

      t.timestamps
    end
  end
end
