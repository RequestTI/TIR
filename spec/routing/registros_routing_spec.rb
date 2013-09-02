require "spec_helper"

describe RegistrosController do
  describe "routing" do

    it "routes to #index" do
      get("/registros").should route_to("registros#index")
    end

    it "routes to #new" do
      get("/registros/new").should route_to("registros#new")
    end

    it "routes to #show" do
      get("/registros/1").should route_to("registros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/registros/1/edit").should route_to("registros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/registros").should route_to("registros#create")
    end

    it "routes to #update" do
      put("/registros/1").should route_to("registros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/registros/1").should route_to("registros#destroy", :id => "1")
    end

  end
end
