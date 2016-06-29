require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :header => "MyString",
      :description => "MyText",
      :static_page => nil
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input#section_header[name=?]", "section[header]"

      assert_select "textarea#section_description[name=?]", "section[description]"

      assert_select "input#section_static_page_id[name=?]", "section[static_page_id]"
    end
  end
end
