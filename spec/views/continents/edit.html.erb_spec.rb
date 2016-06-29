require 'rails_helper'

RSpec.describe "continents/edit", type: :view do
  before(:each) do
    @continent = assign(:continent, Continent.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit continent form" do
    render

    assert_select "form[action=?][method=?]", continent_path(@continent), "post" do

      assert_select "input#continent_name[name=?]", "continent[name]"
    end
  end
end
