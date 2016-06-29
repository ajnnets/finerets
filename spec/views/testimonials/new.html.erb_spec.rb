require 'rails_helper'

RSpec.describe "testimonials/new", type: :view do
  before(:each) do
    assign(:testimonial, Testimonial.new(
      :subject => "MyString",
      :message => "MyText",
      :client_name => "MyString",
      :published => false
    ))
  end

  it "renders new testimonial form" do
    render

    assert_select "form[action=?][method=?]", testimonials_path, "post" do

      assert_select "input#testimonial_subject[name=?]", "testimonial[subject]"

      assert_select "textarea#testimonial_message[name=?]", "testimonial[message]"

      assert_select "input#testimonial_client_name[name=?]", "testimonial[client_name]"

      assert_select "input#testimonial_published[name=?]", "testimonial[published]"
    end
  end
end
