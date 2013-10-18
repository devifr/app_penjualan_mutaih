json.array!(@purchases) do |purchase|
  json.extract! purchase, :product_id, :quantity, :total, :date
  json.url purchase_url(purchase, format: :json)
end
