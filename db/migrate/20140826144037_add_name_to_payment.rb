class AddNameToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :name, :string
  end
end
