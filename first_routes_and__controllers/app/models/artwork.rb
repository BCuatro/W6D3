class Artwork < ApplicationRecord
      belongs_to :artist, 
            class_name: 'User',
            primary_key: :id,
            foreign_key: :artist_id
      
      has_many :shares, 
            class_name: 'ArtworkShare',
            primary_key: :id, 
            foreign_key: :artwork_id

      has_many :shared_with, through: :shares, source: :viewer

      validates :title, presence: true, uniqueness: { scope: :artist_id }
      validates :artist_id, presence: true, uniqueness: { scope: :title }
      validates :image_url, presence: true
end
