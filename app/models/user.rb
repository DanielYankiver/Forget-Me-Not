class User < ApplicationRecord
    has_many :events
    has_many :contacts, through: :events
    
    has_secure_password
    
    validates :username, :password, :password_confirmation, presence: :true

    validates :username, uniqueness: {message: "must be unique"}
    
    has_one_attached :avatar 

end
