require 'rails_helper'

RSpec.describe "testimonials/edit", type: :view do
  before(:each) do
    @testimonial = assign(:testimonial, Testimonial.create!(
      :subject => "MyString",
      :message => "MyText",
      :client_name => "MyString",
      :published => false
    ))
  end

  it "renders the edit testimonial form" do
    render

    assert_select "form[action=?][method=?]", testimonial_path(@testimonial), "post" do

      assert_select "input#testimonial_subject[name=?]", "testimonial[subject]"

      assert_select "textarea#testimonial_message[name=?]", "testimonial[message]"

      assert_select "input#testimonial_client_name[name=?]", "testimonial[client_name]"

      assert_select "input#testimonial_published[name=?]", "testimonial[published]"
    end
  end
end
