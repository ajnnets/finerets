require 'rails_helper'

RSpec.describe "villas/index", type: :view do
  before(:each) do
    assign(:villas, [
      Villa.create!(
        :name => "Name",
        :description => "MyText",
        :guest_count => 1,
        :bedroom_count => 2,
        :villa_detail_heading => "Villa Detail Heading",
        :love_points_heading => "Love Points Heading",
        :villa_rates_heading => "Villa Rates Heading",
        :need_to_know_heading => "Need To Know Heading",
        :feature_and_facility_heading => "Feature And Facility Heading",
        :similar_villas => "",
        :published => false,
        :area => nil,
        :region => nil,
        :country => nil,
        :continent => nil
      ),
      Villa.create!(
        :name => "Name",
        :description => "MyText",
        :guest_count => 1,
        :bedroom_count => 2,
        :villa_detail_heading => "Villa Detail Heading",
        :love_points_heading => "Love Points Heading",
        :villa_rates_heading => "Villa Rates Heading",
        :need_to_know_heading => "Need To Know Heading",
        :feature_and_facility_heading => "Feature And Facility Heading",
        :similar_villas => "",
        :published => false,
        :area => nil,
        :region => nil,
        :country => nil,
        :continent => nil
      )
    ])
  end

  it "renders a list of villas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Villa Detail Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Love Points Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Villa Rates Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Need To Know Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Feature And Facility Heading".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
