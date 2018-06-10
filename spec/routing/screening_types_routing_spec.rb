require "rails_helper"

RSpec.describe ScreeningTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/screening_types").to route_to("screening_types#index")
    end

    it "routes to #new" do
      expect(:get => "/screening_types/new").to route_to("screening_types#new")
    end

    it "routes to #show" do
      expect(:get => "/screening_types/1").to route_to("screening_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/screening_types/1/edit").to route_to("screening_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/screening_types").to route_to("screening_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/screening_types/1").to route_to("screening_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/screening_types/1").to route_to("screening_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/screening_types/1").to route_to("screening_types#destroy", :id => "1")
    end

  end
end
