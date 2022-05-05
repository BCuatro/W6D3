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
      
      has_many :comments,
            class_name: 'Comment',
            primary_key: :id, 
            foreign_key: :user_id, 
            dependent: :destroy 

      has_many :likes,
            class_name: 'Like',
            primary_key: :id,
            foreign_key: :liker_id
      
      has_many :liked_artworks,
            through: :likes,
            source: :likeable,
            source_type: 'Artwork'
      
      has_many :liked_comments,
            through: :likes,
            source: :likeable,
            source_type: 'Comment'
            
      has_many :likes_on_artwork,
            through: :artworks,
            source: :likes

      has_many :comments_on_artwork,
            through: :comments,
            source: :likes

      
      has_many :shared_artworks, through: :shares, source: :artwork
      validates :username, presence: true, uniqueness: true 
end
