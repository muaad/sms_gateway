json.array!(@sender_ids) do |sender_id|
  json.extract! sender_id, :id, :aggregator_id, :sender_id
  json.url sender_id_url(sender_id, format: :json)
end
