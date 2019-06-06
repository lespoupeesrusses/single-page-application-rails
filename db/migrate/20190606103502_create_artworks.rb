class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.references :artist, foreign_key: true
      t.string :title
      t.text :image

      t.timestamps
    end
  end
end
