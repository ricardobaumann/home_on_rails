json.array!(@product_groups) do |product_group|
  json.extract! product_group, :id, :name
  json.url product_group_url(product_group, format: :json)
end
