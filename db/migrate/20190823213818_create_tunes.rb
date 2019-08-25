class CreateTunes < ActiveRecord::Migration[6.0]
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :genre
      t.belongs_to :band, foreign_key: true
      t.belongs_to :billboard, foreign_key: true

      t.timestamps
    end
  end
end
