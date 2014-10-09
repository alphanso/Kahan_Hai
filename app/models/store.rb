class Store
  include Mongoid::Document
  field :facilities, type: Hash
  field :phoneNumbers, type: Array
  field :Address, type: Address
  has_one :address
end
