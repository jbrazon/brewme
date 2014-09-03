json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :quantity, :category_id
  json.url item_url(item, format: :json)
end
