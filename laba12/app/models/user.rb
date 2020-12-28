class User < ApplicationRecord
  has_secure_password
  validates :emeil, presence:true, uniqueness: true
end
