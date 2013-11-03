class Sale < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true

  before_save :count_total_and_selling_price, :decrement_stock

  def count_total_and_selling_price
    if self.selling_price.blank?
      if self.Type == false
        price = self.product.price_normal
      else
        price = self.product.price_reseller
      end
        final_total = price * self.quantity
        self.total = final_total
        self.selling_price = price
    end 
  end

  def decrement_stock
    stock = Stock.find(self.product_id) || Stock.new(product_id: self.product_id)
    last_stock = stock.total - count_stock
    stock.total = last_stock
    stock.save
  end

  def count_stock
    jumlah_now = Sale.where('id = ?', self.id).first
    return -(jumlah_now.quantity - self.quantity) if jumlah_now
    self.quantity
  end

end
