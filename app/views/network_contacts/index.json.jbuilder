json.array!(@network_contacts) do |network_contact|
  json.extract! network_contact, :id, :phonebook_id, :email, :location, :network_id
  json.url network_contact_url(network_contact, format: :json)
end
