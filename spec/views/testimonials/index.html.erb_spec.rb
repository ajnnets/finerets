require 'rails_helper'

RSpec.describe "testimonials/index", type: :view do
  before(:each) do
    assign(:testimonials, [
      Testimonial.create!(
        :subject => "Subject",
        :message => "MyText",
        :client_name => "Client Name",
        :published => false
      ),
      Testimonial.create!(
        :subject => "Subject",
        :message => "MyText",
        :client_name => "Client Name",
        :published => false
      )
    ])
  end

  it "renders a list of testimonials" do
    render
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
