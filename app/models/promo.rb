class Promo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :restaurant_id, type: Integer
  field :hotel_id, type: Integer
  validates :name, :presence => true
end
