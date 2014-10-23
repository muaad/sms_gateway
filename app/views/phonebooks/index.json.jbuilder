json.array!(@phonebooks) do |phonebook|
  json.extract! phonebook, :id, :number, :surname, :other_names, :group_id, :country_id
  json.url phonebook_url(phonebook, format: :json)
end
