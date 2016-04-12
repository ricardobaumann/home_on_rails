json.array!(@stock_operations) do |stock_operation|
  json.extract! stock_operation, :id, :type, :name
  json.url stock_operation_url(stock_operation, format: :json)
end
