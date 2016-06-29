json.array!(@regions) do |region|
  json.extract! region, :id, :name, :country_id, :published
  json.url region_url(region, format: :json)
end
