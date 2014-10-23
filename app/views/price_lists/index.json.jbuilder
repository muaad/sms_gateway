json.array!(@price_lists) do |price_list|
  json.extract! price_list, :id, :credits_id, :cost_per_sms, :aggregator_id, :bind_detail_id
  json.url price_list_url(price_list, format: :json)
end
