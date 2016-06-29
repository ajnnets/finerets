require 'rails_helper'

RSpec.describe "continents/show", type: :view do
  before(:each) do
    @continent = assign(:continent, Continent.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
