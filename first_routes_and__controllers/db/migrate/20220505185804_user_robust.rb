class UserRobust < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :description, :string
      add_column :users, :birthday, :datetime
      add_column :users, :favorite_color, :string
  end
end
