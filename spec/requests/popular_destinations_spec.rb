require 'rails_helper'

RSpec.describe "PopularDestinations", type: :request do
  describe "GET /popular_destinations" do
    it "works! (now write some real specs)" do
      get popular_destinations_path
      expect(response).to have_http_status(200)
    end
  end
end
