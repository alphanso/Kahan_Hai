json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :state, :city, :pinCode, :latitude, :longitude, :locality, :streetName, :building
  json.url address_url(address, format: :json)
end
