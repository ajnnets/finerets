require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      :name => "MyString",
      :continent => nil,
      :published => false
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input#country_name[name=?]", "country[name]"

      assert_select "input#country_continent_id[name=?]", "country[continent_id]"

      assert_select "input#country_published[name=?]", "country[published]"
    end
  end
end
