class Contact < ApplicationRecord
    belongs_to :user 
    has_many :events 
    has_many :users, through: :events 

    validates :name, :birthday, :contact_info, presence: :true

    # validates :contact_info, uniqueness: {presence: :true, message: "must be unique"}
    # validates :name, uniqueness: {presence: :true, message: "must be unique"}

    has_one_attached :avatar 
end
