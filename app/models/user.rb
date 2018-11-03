class User < ApplicationRecord
  has_many :scores
  has_many :songs, through: :scores
  has_secure_password
end
