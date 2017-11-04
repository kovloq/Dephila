class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :lat, type: String
  field :lng, type: String
  field :description, type: String
  field :open_time, type: Time
  field :close_time, type: Time
  validates :name, :presence => true
end
