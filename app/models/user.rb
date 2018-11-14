class User < ApplicationRecord
  has_many :scores
  has_many :songs, through: :scores
  has_secure_password


  validates :username, presence: true, uniqueness:true
  validates :username, length: { in: 4..10 }
  validates :username, :format => { with: /\A[a-zA-Z0-9]*\z/ , :message => 'no special characters, only letters and numbers' }

  validates :email, presence: true, uniqueness:true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  validates :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :password, :format => { with: /\A[a-zA-Z0-9]*\z/ , :message => 'no special characters, only letters and numbers' }




  # validates :email, :format => { with: /\A[a-zA-Z0-9]*\z/ , :message => 'no special characters, only letters and numbers' }

end
