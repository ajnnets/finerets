require 'rails_helper'

RSpec.describe "popular_destinations/show", type: :view do
  before(:each) do
    @popular_destination = assign(:popular_destination, PopularDestination.create!(
      :area => nil,
      :region => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
