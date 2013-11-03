class Purchase < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true

  before_save :count_total, :increment_stock

  def count_total
    final_total = self.product.price_purchase * self.quantity
    self.total = final_total 
  end

  def increment_stock
    stock = Stock.find(self.product_id)
    last_stock = stock.total + count_stock
    stock.total = last_stock
    stock.save
  end

  def count_stock
    jumlah_now = Purchase.where('id = ?',self.id).first
    return -(jumlah_now.quantity - self.quantity) if jumlah_now
    self.quantity
  end

end