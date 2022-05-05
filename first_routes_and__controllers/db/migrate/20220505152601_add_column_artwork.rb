class AddColumnArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :favorite_of_artist, :boolean,  index: :true
    add_column :artwork_shares, :favorite_of_sharer, :boolean, index: :true
  end
end
