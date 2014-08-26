class AddCardCvcToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :card_cvc, :string
  end
end
