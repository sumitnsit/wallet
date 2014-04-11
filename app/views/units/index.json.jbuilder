json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :symbol, :active, :unit_type, :note
  json.url unit_url(unit, format: :json)
end
