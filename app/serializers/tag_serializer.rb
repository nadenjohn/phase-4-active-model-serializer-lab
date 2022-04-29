class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts
  has_many :posts



end
