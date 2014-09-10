json.array!(@fees) do |fee|
  json.extract! fee, :id, :cart_id, :title, :start_at, :end, :fee
  json.url fee_url(fee, format: :json)
end
