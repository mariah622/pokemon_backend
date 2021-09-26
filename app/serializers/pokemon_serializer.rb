class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :move, :ability
  has_many :comments
end
