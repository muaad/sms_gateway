json.array!(@aggregators) do |aggregator|
  json.extract! aggregator, :id, :name, :code
  json.url aggregator_url(aggregator, format: :json)
end
