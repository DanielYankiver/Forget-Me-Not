class Event < ApplicationRecord
    belongs_to :user
    belongs_to :contact
    has_many :messages
    has_many :gifts
end
