json.array!(@sms) do |sm|
  json.extract! sm, :id, :message, :delivery_status, :messageid, :phonebook_id, :cost, :send_time, :delivery_time, :latency
  json.url sm_url(sm, format: :json)
end
