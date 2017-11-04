class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :username, type: String
  field :email, type: String
  field :password, type: String
  validates :name, :presence => true
  validates :username, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true
end
