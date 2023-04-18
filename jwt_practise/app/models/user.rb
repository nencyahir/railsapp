class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :comments
    validates :name, :email, :username, presence: true
    validates :email, :username, uniqueness: true

end
