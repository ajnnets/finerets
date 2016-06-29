json.array!(@villas) do |villa|
  json.extract! villa, :id, :name, :description, :guest_count, :bedroom_count, :villa_detail_heading, :love_points_heading, :villa_rates_heading, :need_to_know_heading, :feature_and_facility_heading, :similar_villas, :published, :area_id, :region_id, :country_id, :continent_id
  json.url villa_url(villa, format: :json)
end
