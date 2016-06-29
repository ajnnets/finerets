require "rails_helper"

RSpec.describe VillasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/villas").to route_to("villas#index")
    end

    it "routes to #new" do
      expect(:get => "/villas/new").to route_to("villas#new")
    end

    it "routes to #show" do
      expect(:get => "/villas/1").to route_to("villas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/villas/1/edit").to route_to("villas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/villas").to route_to("villas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/villas/1").to route_to("villas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/villas/1").to route_to("villas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/villas/1").to route_to("villas#destroy", :id => "1")
    end

  end
end
