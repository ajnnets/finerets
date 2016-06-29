require 'rails_helper'

RSpec.describe "static_pages/edit", type: :view do
  before(:each) do
    @static_page = assign(:static_page, StaticPage.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit static_page form" do
    render

    assert_select "form[action=?][method=?]", static_page_path(@static_page), "post" do

      assert_select "input#static_page_name[name=?]", "static_page[name]"

      assert_select "textarea#static_page_description[name=?]", "static_page[description]"
    end
  end
end
