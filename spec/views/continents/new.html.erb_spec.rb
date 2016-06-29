require 'rails_helper'

RSpec.describe "continents/new", type: :view do
  before(:each) do
    assign(:continent, Continent.new(
      :name => "MyString"
    ))
  end

  it "renders new continent form" do
    render

    assert_select "form[action=?][method=?]", continents_path, "post" do

      assert_select "input#continent_name[name=?]", "continent[name]"
    end
  end
end
