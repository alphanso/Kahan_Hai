class Address
  include Mongoid::Document
  field :country, type: String
  field :state, type: String
  field :city, type: String
  field :pinCode, type: Integer
  field :latitude, type: Float
  field :longitude, type: Float
  field :locality, type: String
  field :streetName, type: String
  field :building, type: String
end
