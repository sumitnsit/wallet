json.array!(@payees) do |payee|
  json.extract! payee, :id, :name, :url, :contact, :note
  json.url payee_url(payee, format: :json)
end
