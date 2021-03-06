json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :code
  json.url provider_url(provider, format: :json)
end
