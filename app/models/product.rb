class Product < ActiveRecord::Base
  belongs_to :category
  has_many :purchases
  has_many :sales
  has_one :stock

  after_save :add_product_in_stock

  has_attached_file :picture, 
                    :styles => 
                    { 
                      :medium => "300x300>", 
                      :thumb => "100x100>"
                    },
                    :default_url => "/images/:style/missing.png"

  def add_product_in_stock
    Stock.create(product_id: self.id, total: 0)
  end
end
