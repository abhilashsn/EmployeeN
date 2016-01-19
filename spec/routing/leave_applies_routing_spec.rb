require "rails_helper"

RSpec.describe LeaveAppliesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/leave_applies").to route_to("leave_applies#index")
    end

    it "routes to #new" do
      expect(:get => "/leave_applies/new").to route_to("leave_applies#new")
    end

    it "routes to #show" do
      expect(:get => "/leave_applies/1").to route_to("leave_applies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/leave_applies/1/edit").to route_to("leave_applies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/leave_applies").to route_to("leave_applies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/leave_applies/1").to route_to("leave_applies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/leave_applies/1").to route_to("leave_applies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/leave_applies/1").to route_to("leave_applies#destroy", :id => "1")
    end

  end
end
