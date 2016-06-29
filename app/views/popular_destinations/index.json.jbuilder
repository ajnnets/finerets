json.array!(@popular_destinations) do |popular_destination|
  json.extract! popular_destination, :id, :area_id, :region_id
  json.url popular_destination_url(popular_destination, format: :json)
end
