json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :subject, :message, :client_name, :published
  json.url testimonial_url(testimonial, format: :json)
end
