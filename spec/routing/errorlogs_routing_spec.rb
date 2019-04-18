require "rails_helper"

RSpec.describe ErrorlogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/errorlogs").to route_to("errorlogs#index")
    end

    it "routes to #new" do
      expect(:get => "/errorlogs/new").to route_to("errorlogs#new")
    end

    it "routes to #show" do
      expect(:get => "/errorlogs/1").to route_to("errorlogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/errorlogs/1/edit").to route_to("errorlogs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/errorlogs").to route_to("errorlogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/errorlogs/1").to route_to("errorlogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/errorlogs/1").to route_to("errorlogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/errorlogs/1").to route_to("errorlogs#destroy", :id => "1")
    end
  end
end
