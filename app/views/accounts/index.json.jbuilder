json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :account_type_id, :init_amount, :note, :active, :currency_id
  json.url account_url(account, format: :json)
end
