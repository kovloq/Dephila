class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :email, type: String
  field :subject, type: String
  field :message, type: String
  validates :name, :presence => true
  validates :email, :presence => true
  validates :subject, :presence => true
  validates :message, :presence => true
end
