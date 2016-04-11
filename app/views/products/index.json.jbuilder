json.array!(@products) do |product|
  json.extract! product, :id, :name, :product_group_id, :metric_unit_id, :unit_prize
  json.url product_url(product, format: :json)
end
