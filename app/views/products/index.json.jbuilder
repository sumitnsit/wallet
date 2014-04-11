json.array!(@products) do |product|
  json.extract! product, :id, :name, :quantity, :rate, :amount, :unit_id, :category_id, :payee_id, :shopping_id
  json.url product_url(product, format: :json)
end
