json.array!(@stocks) do |stock|
  json.extract! stock, :product_id, :total
  json.url stock_url(stock, format: :json)
end
