json.array!(@sales) do |sale|
  json.extract! sale, :product_id, :quantity, :selling_price, :total, :date, :Type
  json.url sale_url(sale, format: :json)
end
