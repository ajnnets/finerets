require 'rails_helper'

RSpec.describe "popular_destinations/edit", type: :view do
  before(:each) do
    @popular_destination = assign(:popular_destination, PopularDestination.create!(
      :area => nil,
      :region => nil
    ))
  end

  it "renders the edit popular_destination form" do
    render

    assert_select "form[action=?][method=?]", popular_destination_path(@popular_destination), "post" do

      assert_select "input#popular_destination_area_id[name=?]", "popular_destination[area_id]"

      assert_select "input#popular_destination_region_id[name=?]", "popular_destination[region_id]"
    end
  end
end
