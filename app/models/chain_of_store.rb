class ChainOfStore
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :slug, type: String
  field :phoneNumbers, type: Array
  field :emailAddress, type: String
  field :website, type: String

  belongs_to :user
  has_many :stores
end
