class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.decimal :price_normal
      t.decimal :price_reseller

      t.timestamps
    end
  end
end
