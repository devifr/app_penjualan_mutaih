json.array!(@products) do |product|
  json.extract! product, :name, :description, :category_id, :price_normal, :price_reseller
  json.url product_url(product, format: :json)
end
