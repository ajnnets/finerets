require 'rails_helper'

RSpec.describe "static_pages/index", type: :view do
  before(:each) do
    assign(:static_pages, [
      StaticPage.create!(
        :name => "Name",
        :description => "MyText"
      ),
      StaticPage.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of static_pages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
