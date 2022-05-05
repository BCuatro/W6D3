class CollectionItem < ApplicationRecord
      belongs_to :collection, 
            class_name: 'Collection',
            primary_key: :id, 
            foreign_key: :collection_id
      
      belongs_to :artwork, 
            class_name: 'Artwork',
            primary_key: :id, 
            foreign_key: :artwork_id
      
      validates :collection_id, presence: true 
      validates :artwork_id, presence: :true
end
