class ArtShare < ActiveRecord::Migration[5.2]
  def change

    drop_table :users
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.timestamps
    end
    add_index :users, :username, unique: true

    drop_table :artworks
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id, null: false
    end
    add_index :artworks, [:title, :artist_id], unique: true
    add_index :artworks, :artist_id

    drop_table :artwork_shares
    create_table :artwork_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false 
    end
    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
  end

end
