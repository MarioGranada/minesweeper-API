class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :email, type: String
  field :password, type: String
  has_many :games, validate: false, dependent: :destroy

end
