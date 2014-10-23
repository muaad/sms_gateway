json.array!(@credits) do |credit|
  json.extract! credit, :id, :amount, :currency, :aggregator_id
  json.url credit_url(credit, format: :json)
end
