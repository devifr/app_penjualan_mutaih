class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :product_id
      t.integer :quantity
      t.float :total
      t.date :date

      t.timestamps
    end
  end
end
