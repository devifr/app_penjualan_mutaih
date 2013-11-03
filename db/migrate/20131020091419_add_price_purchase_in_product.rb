class AddPricePurchaseInProduct < ActiveRecord::Migration
  def change
    add_column :products, :price_purchase, :decimal
  end
end
