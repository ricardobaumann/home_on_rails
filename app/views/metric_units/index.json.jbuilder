json.array!(@metric_units) do |metric_unit|
  json.extract! metric_unit, :id, :name
  json.url metric_unit_url(metric_unit, format: :json)
end
