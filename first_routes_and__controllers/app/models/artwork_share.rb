class ArtworkShare < ApplicationRecord
      belongs_to :artwork,
            class_name: 'Artwork',
            primary_key: :id, 
            foreign_key: :artwork_id
      
      belongs_to :viewer,
            class_name: 'User',
            primary_key: :id, 
            foreign_key: :viewer_id
      
      validates :artwork_id, presence: true, uniqueness: { scope: :viewer_id }
      validates :viewer_id, presence: true, uniqueness: { scope: :artwork_id }
end
