class AddLastNameToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :last_name, :string
  end
end
