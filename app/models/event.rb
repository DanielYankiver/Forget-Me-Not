class Event < ApplicationRecord
    belongs_to :user
    belongs_to :contact
    has_many :messages
    has_many :gifts

    validates :date, :time, :event_name, :category, presence: :true



end
