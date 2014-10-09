json.array!(@chain_of_stores) do |chain_of_store|
  json.extract! chain_of_store, :id, :name, :type, :slug, :phoneNumbers, :emailAddress, :website, :owner, :facilities
  json.url chain_of_store_url(chain_of_store, format: :json)
end
