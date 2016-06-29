require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :header => "MyString",
      :description => "MyText",
      :static_page => nil
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input#section_header[name=?]", "section[header]"

      assert_select "textarea#section_description[name=?]", "section[description]"

      assert_select "input#section_static_page_id[name=?]", "section[static_page_id]"
    end
  end
end
