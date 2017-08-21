class Admin
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :email, type: String
  field :name, type: String
end
