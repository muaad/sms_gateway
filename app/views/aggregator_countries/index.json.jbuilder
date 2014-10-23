json.array!(@aggregator_countries) do |aggregator_country|
  json.extract! aggregator_country, :id, :aggregator_id, :country_id
  json.url aggregator_country_url(aggregator_country, format: :json)
end
