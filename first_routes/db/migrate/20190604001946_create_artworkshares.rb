class CreateArtworkshares < ActiveRecord::Migration[5.2]
  def change
    create_table :artworkshares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false
    end
    add_index :artworkshares, [:viewer_id, :artwork_id], unique: true
    add_index :artworkshares, :artwork_id
    add_index :artworkshares, :viewer_id
  end
end
