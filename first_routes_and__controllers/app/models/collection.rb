class Collection < ApplicationRecord
      belongs_to :user,
            class_name: 'User', 
            primary_key: :id, 
            foreign_key: :user_id
      
      has_many :collection_items, 
            class_name: 'CollectionItem',
            primary_key: :id, 
            foreign_key: :collection_id,
            dependent: :destroy
      
      has_many :collected_artworks, through: :collection_items, source: :artwork
      
      validates :user_id, presence: true 
end
