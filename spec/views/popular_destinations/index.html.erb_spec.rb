require 'rails_helper'

RSpec.describe "popular_destinations/index", type: :view do
  before(:each) do
    assign(:popular_destinations, [
      PopularDestination.create!(
        :area => nil,
        :region => nil
      ),
      PopularDestination.create!(
        :area => nil,
        :region => nil
      )
    ])
  end

  it "renders a list of popular_destinations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
