class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :lat, type: String
  field :lng, type: String
  field :description, type: String
  validates :name, :presence => true
end
