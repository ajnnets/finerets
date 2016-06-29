require 'rails_helper'

RSpec.describe "Villas", type: :request do
  describe "GET /villas" do
    it "works! (now write some real specs)" do
      get villas_path
      expect(response).to have_http_status(200)
    end
  end
end
