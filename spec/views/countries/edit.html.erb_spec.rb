require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      :name => "MyString",
      :continent => nil,
      :published => false
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input#country_name[name=?]", "country[name]"

      assert_select "input#country_continent_id[name=?]", "country[continent_id]"

      assert_select "input#country_published[name=?]", "country[published]"
    end
  end
end
