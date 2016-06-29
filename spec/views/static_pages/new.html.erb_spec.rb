require 'rails_helper'

RSpec.describe "static_pages/new", type: :view do
  before(:each) do
    assign(:static_page, StaticPage.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new static_page form" do
    render

    assert_select "form[action=?][method=?]", static_pages_path, "post" do

      assert_select "input#static_page_name[name=?]", "static_page[name]"

      assert_select "textarea#static_page_description[name=?]", "static_page[description]"
    end
  end
end
