json.array!(@aggregator_providers) do |aggregator_provider|
  json.extract! aggregator_provider, :id, :aggregator_id, :provider_id
  json.url aggregator_provider_url(aggregator_provider, format: :json)
end
