require "rails_helper"

RSpec.describe PopularDestinationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/popular_destinations").to route_to("popular_destinations#index")
    end

    it "routes to #new" do
      expect(:get => "/popular_destinations/new").to route_to("popular_destinations#new")
    end

    it "routes to #show" do
      expect(:get => "/popular_destinations/1").to route_to("popular_destinations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/popular_destinations/1/edit").to route_to("popular_destinations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/popular_destinations").to route_to("popular_destinations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/popular_destinations/1").to route_to("popular_destinations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/popular_destinations/1").to route_to("popular_destinations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/popular_destinations/1").to route_to("popular_destinations#destroy", :id => "1")
    end

  end
end
