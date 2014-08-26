class AddPhotoToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :photo_id, :integer
  end
end
