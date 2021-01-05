class User < ApplicationRecord
    has_many :Events
    has_many :Contact, through: :Events

    
end
