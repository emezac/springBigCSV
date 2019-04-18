require "rails_helper"

RSpec.describe LoguploadsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/loguploads").to route_to("loguploads#index")
    end

    it "routes to #new" do
      expect(:get => "/loguploads/new").to route_to("loguploads#new")
    end

    it "routes to #show" do
      expect(:get => "/loguploads/1").to route_to("loguploads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loguploads/1/edit").to route_to("loguploads#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/loguploads").to route_to("loguploads#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loguploads/1").to route_to("loguploads#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loguploads/1").to route_to("loguploads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loguploads/1").to route_to("loguploads#destroy", :id => "1")
    end
  end
end
