json.array!(@categories) do |category|
  json.extract! category, :id, :parent_id, :name, :active, :note
  json.url category_url(category, format: :json)
end
