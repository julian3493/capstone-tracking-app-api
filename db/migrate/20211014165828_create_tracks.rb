class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :electrodomestic
      t.date :day
      t.integer :time_connected
      t.integer :watts
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
