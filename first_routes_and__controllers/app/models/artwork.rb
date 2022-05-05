class Artwork < ApplicationRecord
      belongs_to :artist, 
            class_name: 'User',
            primary_key: :id,
            foreign_key: :artist_id
      
      has_many :shares, 
            class_name: 'ArtworkShare',
            primary_key: :id, 
            foreign_key: :artwork_id

      has_many :comments,
            class_name: 'Comment',
            primary_key: :id, 
            foreign_key: :artwork_id, 
            dependent: :destroy

      has_many :part_of_collections,
            class_name: 'CollectionItem',
            primary_key: :id, 
            foreign_key: :artwork_id, 
            dependent: :destroy
      
      has_many :belongs_to_collections,
            through: :part_of_collections,
                  source: :collection
      
      has_many :likes, as: :likeable, dependent: :destroy
      
      has_many :shared_with, through: :shares, source: :viewer

      has_many :likers,
            through: :likes,
            source: :liker

      validates :title, presence: true, uniqueness: { scope: :artist_id }
      validates :artist_id, presence: true, uniqueness: { scope: :title }
      validates :image_url, presence: true
end
