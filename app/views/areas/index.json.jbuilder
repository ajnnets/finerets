json.array!(@areas) do |area|
  json.extract! area, :id, :name, :region_id, :published
  json.url area_url(area, format: :json)
end
