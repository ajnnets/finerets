json.array!(@sections) do |section|
  json.extract! section, :id, :header, :description, :static_page_id
  json.url section_url(section, format: :json)
end
