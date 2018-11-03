class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :scores
  has_many :songs , through: :scores


  
end
