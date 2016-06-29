require 'rails_helper'

RSpec.describe "continents/index", type: :view do
  before(:each) do
    assign(:continents, [
      Continent.create!(
        :name => "Name"
      ),
      Continent.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of continents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
