class Fixlikes < ActiveRecord::Migration[5.2]
  def change
    drop_table :likes 
    create_table :likes do |t|
      t.integer :liker_id, null:false 
      t.integer :likeable_id, null: false
      t.string :likeable_type, null: false
      t.timestamps
    end

    add_index :likes, [:likeable_id, :likeable_type]
    add_index :likes, [:likeable_id, :likeable_type, :liker_id], unique: :true
  end
  
end
