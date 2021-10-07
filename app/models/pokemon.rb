class Pokemon < ApplicationRecord
    has_many :comments

    validates :name, :move, :ability, presence: true 
    validates :name, uniqueness: true 

end
