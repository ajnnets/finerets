require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :header => "Header",
      :description => "MyText",
      :static_page => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Header/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
