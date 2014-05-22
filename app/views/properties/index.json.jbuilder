json.array!(@properties) do |property|
  json.extract! property, :businessName, :streetAddress, :city, :state, :zip
  json.url property_url(property, format: :json)
end
