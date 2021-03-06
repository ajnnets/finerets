require 'rails_helper'

RSpec.describe "areas/edit", type: :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :name => "MyString",
      :region => nil,
      :published => false
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input#area_name[name=?]", "area[name]"

      assert_select "input#area_region_id[name=?]", "area[region_id]"

      assert_select "input#area_published[name=?]", "area[published]"
    end
  end
end
