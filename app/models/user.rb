class User < ApplicationRecord
    has_secure_password
    has_many :folders, dependent: :destroy
    validates :username, presence: true
    validates :password, presence: true
    validates :username, uniqueness: true
end
