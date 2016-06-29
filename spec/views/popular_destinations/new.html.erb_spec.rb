require 'rails_helper'

RSpec.describe "popular_destinations/new", type: :view do
  before(:each) do
    assign(:popular_destination, PopularDestination.new(
      :area => nil,
      :region => nil
    ))
  end

  it "renders new popular_destination form" do
    render

    assert_select "form[action=?][method=?]", popular_destinations_path, "post" do

      assert_select "input#popular_destination_area_id[name=?]", "popular_destination[area_id]"

      assert_select "input#popular_destination_region_id[name=?]", "popular_destination[region_id]"
    end
  end
end
