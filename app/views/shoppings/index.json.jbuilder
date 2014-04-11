json.array!(@shoppings) do |shopping|
  json.extract! shopping, :id, :account_id, :date, :amount, :bill_number
  json.url shopping_url(shopping, format: :json)
end
