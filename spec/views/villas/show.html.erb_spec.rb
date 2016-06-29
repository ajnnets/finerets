require 'rails_helper'

RSpec.describe "villas/show", type: :view do
  before(:each) do
    @villa = assign(:villa, Villa.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Villa Detail Heading/)
    expect(rendered).to match(/Love Points Heading/)
    expect(rendered).to match(/Villa Rates Heading/)
    expect(rendered).to match(/Need To Know Heading/)
    expect(rendered).to match(/Feature And Facility Heading/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
