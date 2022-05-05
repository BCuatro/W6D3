class Like < ApplicationRecord
      belongs_to :liker,
            class_name: 'User', 
            primary_key: :id, 
            foreign_key: :liker_id

      belongs_to :likeable, polymorphic: true

      validates :liker_id, presence: :true, :uniqueness => { :scope => [:likeable_type, :likeable_id] }

end
