class SnackSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :origin, :picture, :price
end
