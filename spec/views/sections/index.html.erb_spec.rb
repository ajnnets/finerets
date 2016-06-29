require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        :header => "Header",
        :description => "MyText",
        :static_page => nil
      ),
      Section.create!(
        :header => "Header",
        :description => "MyText",
        :static_page => nil
      )
    ])
  end

  it "renders a list of sections" do
    render
    assert_select "tr>td", :text => "Header".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
