class ChainOfStore
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :slug, type: String
  field :phoneNumbers, type: Array
  field :emailAddress, type: String
  field :website, type: String
  field :owner, type: User
  field :facilities, type: Hash
  has_many :stores
end
