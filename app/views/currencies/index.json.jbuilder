json.array!(@currencies) do |currency|
  json.extract! currency, :id, :name, :symbol, :active
  json.url currency_url(currency, format: :json)
end
