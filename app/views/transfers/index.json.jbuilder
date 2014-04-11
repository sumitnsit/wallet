json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :from_account, :to_account, :amount, :date, :note
  json.url transfer_url(transfer, format: :json)
end
