class Comment < ApplicationRecord
      belongs_to :artwork,
            class_name: 'Artwork',
            primary_key: :id, 
            foreign_key: :artwork_id

      belongs_to :commenter,
            class_name: 'User',
            primary_key: :id, 
            foreign_key: :user_id

      has_many :likes, as: :likeable, dependent: :destroy
      
      has_many :likers, through: :likes, source: :liker
      validates :artwork_id, presence: true
      validates :user_id, presence: true
end
