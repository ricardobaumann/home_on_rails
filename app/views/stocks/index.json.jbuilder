json.array!(@stocks) do |stock|
  json.extract! stock, :id, :entry_date, :stock_operation_id
  json.url stock_url(stock, format: :json)
end
