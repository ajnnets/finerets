require 'rails_helper'

RSpec.describe "regions/edit", type: :view do
  before(:each) do
    @region = assign(:region, Region.create!(
      :name => "MyString",
      :country => nil,
      :published => false
    ))
  end

  it "renders the edit region form" do
    render

    assert_select "form[action=?][method=?]", region_path(@region), "post" do

      assert_select "input#region_name[name=?]", "region[name]"

      assert_select "input#region_country_id[name=?]", "region[country_id]"

      assert_select "input#region_published[name=?]", "region[published]"
    end
  end
end
