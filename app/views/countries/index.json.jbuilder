json.array!(@countries) do |country|
  json.extract! country, :id, :name, :continent_id, :published
  json.url country_url(country, format: :json)
end
