json.array!(@stock_items) do |stock_item|
  json.extract! stock_item, :id, :stock_id, :product_id, :unit_prize, :amount, :item_prize
  json.url stock_item_url(stock_item, format: :json)
end
