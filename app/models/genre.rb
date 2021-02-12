class Genre < ApplicationRecord

    has_many :books
    has_many :authors, through: :books 

    validates :genre, presence: true 
end
