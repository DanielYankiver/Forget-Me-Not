class User < ApplicationRecord
    has_many :Events
    has_many :Contact, through: :Events
    
    has_secure_password
    
    validates :username, :password, :password_confirmation, presence: :true

    validates :username, uniqueness: {message: "must be unique"}
    


end
