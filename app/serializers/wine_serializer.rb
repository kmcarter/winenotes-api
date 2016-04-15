class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :varietal, :year, :vinyard, :created_at, :updated_at
end
