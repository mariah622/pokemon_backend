class Comment < ApplicationRecord
  belongs_to :pokemon

  validates :title, presence: true 
  validates :description, presence: true 

end
