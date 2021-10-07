class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :pokemon_id
  belongs_to :pokemon

end
