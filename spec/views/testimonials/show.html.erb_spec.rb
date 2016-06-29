require 'rails_helper'

RSpec.describe "testimonials/show", type: :view do
  before(:each) do
    @testimonial = assign(:testimonial, Testimonial.create!(
      :subject => "Subject",
      :message => "MyText",
      :client_name => "Client Name",
      :published => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Client Name/)
    expect(rendered).to match(/false/)
  end
end
