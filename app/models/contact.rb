class Contact < ApplicationRecord
    belongs_to :user 
    has_many :events 
    has_many :users, through: :events 
end
