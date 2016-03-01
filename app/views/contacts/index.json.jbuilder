json.recordsTotal Contact.count
json.recordsFiltered Contact.count
json.data(@contacts) do |contact|
  json.extract! contact, :id, :name, :bio, :age
  json.path contact_path(contact)
  json.edit_path edit_contact_path(contact)
end
