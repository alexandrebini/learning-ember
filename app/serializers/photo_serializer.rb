class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :errors
end
