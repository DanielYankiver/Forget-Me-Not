class User < ApplicationRecord
    has_many :Events
    has_many :Contact, through: :Events

    validates :name, :username, :password_digest, presence: :true

    validates :username, uniqueness: {message: "must be unique"}
    
end
