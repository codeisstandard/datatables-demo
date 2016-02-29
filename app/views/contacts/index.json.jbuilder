json.recordsTotal Contact.count
json.recordsFiltered Contact.count
json.data(@contacts) do |contact|
  json.extract! contact, :id, :name, :bio, :age
  json.url contact_url(contact, format: :json)
end
