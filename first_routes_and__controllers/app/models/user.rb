class User < ApplicationRecord
      has_many :artworks,
            class_name: 'Artwork',
            primary_key: :id, 
            foreign_key: :artist_id,
            dependent: :destroy
      
      has_many :shares,
            class_name: 'ArtworkShare',
            primary_key: :id, 
            foreign_key: :viewer_id,
            dependent: :destroy
      
      has_many :shared_artworks, through: :shares, source: :artwork
      validates :username, presence: true, uniqueness: true 
end
