class PropertySerializer < ActiveModel::Serializer
  attributes :id, :businessName, :streetAddress, :city, :state, :zip
end
