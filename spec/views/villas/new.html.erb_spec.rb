require 'rails_helper'

RSpec.describe "villas/new", type: :view do
  before(:each) do
    assign(:villa, Villa.new(
      :name => "MyString",
      :description => "MyText",
      :guest_count => 1,
      :bedroom_count => 1,
      :villa_detail_heading => "MyString",
      :love_points_heading => "MyString",
      :villa_rates_heading => "MyString",
      :need_to_know_heading => "MyString",
      :feature_and_facility_heading => "MyString",
      :similar_villas => "",
      :published => false,
      :area => nil,
      :region => nil,
      :country => nil,
      :continent => nil
    ))
  end

  it "renders new villa form" do
    render

    assert_select "form[action=?][method=?]", villas_path, "post" do

      assert_select "input#villa_name[name=?]", "villa[name]"

      assert_select "textarea#villa_description[name=?]", "villa[description]"

      assert_select "input#villa_guest_count[name=?]", "villa[guest_count]"

      assert_select "input#villa_bedroom_count[name=?]", "villa[bedroom_count]"

      assert_select "input#villa_villa_detail_heading[name=?]", "villa[villa_detail_heading]"

      assert_select "input#villa_love_points_heading[name=?]", "villa[love_points_heading]"

      assert_select "input#villa_villa_rates_heading[name=?]", "villa[villa_rates_heading]"

      assert_select "input#villa_need_to_know_heading[name=?]", "villa[need_to_know_heading]"

      assert_select "input#villa_feature_and_facility_heading[name=?]", "villa[feature_and_facility_heading]"

      assert_select "input#villa_similar_villas[name=?]", "villa[similar_villas]"

      assert_select "input#villa_published[name=?]", "villa[published]"

      assert_select "input#villa_area_id[name=?]", "villa[area_id]"

      assert_select "input#villa_region_id[name=?]", "villa[region_id]"

      assert_select "input#villa_country_id[name=?]", "villa[country_id]"

      assert_select "input#villa_continent_id[name=?]", "villa[continent_id]"
    end
  end
end
