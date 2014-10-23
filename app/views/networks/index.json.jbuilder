json.array!(@networks) do |network|
  json.extract! network, :id, :name, :code
  json.url network_url(network, format: :json)
end
