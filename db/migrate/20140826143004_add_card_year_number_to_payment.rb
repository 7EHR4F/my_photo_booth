class AddCardYearNumberToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :card_year, :string
  end
end
