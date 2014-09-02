class CreatePhotoCarts < ActiveRecord::Migration
  def change
    create_table :photo_carts do |t|
      t.integer :photo_id
      t.integer :cart_id
      t.integer :user_id

      t.timestamps
    end
  end
end
