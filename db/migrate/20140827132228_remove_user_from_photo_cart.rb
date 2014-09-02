class RemoveUserFromPhotoCart < ActiveRecord::Migration
  def up
    remove_column :photo_carts, :user_id
  end

  def down
    add_column :photo_carts, :user_id, :integer
  end
end
