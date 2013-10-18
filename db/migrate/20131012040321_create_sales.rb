class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :selling_price
      t.float :total
      t.date :date
      t.boolean :Type

      t.timestamps
    end
  end
end
