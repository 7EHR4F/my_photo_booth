class AddCardMonthNumberToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :card_month, :string
  end
end
