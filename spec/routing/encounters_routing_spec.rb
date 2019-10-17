require "rails_helper"

RSpec.describe EncountersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/encounters").to route_to("encounters#index")
    end


    it "routes to #show" do
      expect(:get => "/encounters/1").to route_to("encounters#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/encounters").to route_to("encounters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/encounters/1").to route_to("encounters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/encounters/1").to route_to("encounters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/encounters/1").to route_to("encounters#destroy", :id => "1")
    end

  end
end
