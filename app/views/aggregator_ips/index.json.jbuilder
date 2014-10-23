json.array!(@aggregator_ips) do |aggregator_ip|
  json.extract! aggregator_ip, :id, :ip_address, :aggregator_id, :whitlisted
  json.url aggregator_ip_url(aggregator_ip, format: :json)
end
