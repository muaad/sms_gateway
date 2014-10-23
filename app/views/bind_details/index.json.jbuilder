json.array!(@bind_details) do |bind_detail|
  json.extract! bind_detail, :id, :host_ip, :port, :smpp_version, :username, :password, :aggregator_id
  json.url bind_detail_url(bind_detail, format: :json)
end
