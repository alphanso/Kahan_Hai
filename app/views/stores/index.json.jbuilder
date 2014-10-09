json.array!(@stores) do |store|
  json.extract! store, :id, :facilities, :phoneNumbers, :Address
  json.url store_url(store, format: :json)
end
