class Collection < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :collections, :user_id

    create_table :collection_items do |t|
      t.integer :collection_id, null:false 
      t.integer :artwork_id, null:false 
      t.timestamps
    end
    add_index :collection_items, [:collection_id, :artwork_id], unique: true
  end
end
