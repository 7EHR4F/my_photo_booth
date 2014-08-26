class AddCardNumberToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :card_number, :string
  end
end
