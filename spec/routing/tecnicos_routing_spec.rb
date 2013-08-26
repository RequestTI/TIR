require "spec_helper"

describe TecnicosController do
  describe "routing" do

    it "routes to #index" do
      get("/tecnicos").should route_to("tecnicos#index")
    end

    it "routes to #new" do
      get("/tecnicos/new").should route_to("tecnicos#new")
    end

    it "routes to #show" do
      get("/tecnicos/1").should route_to("tecnicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tecnicos/1/edit").should route_to("tecnicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tecnicos").should route_to("tecnicos#create")
    end

    it "routes to #update" do
      put("/tecnicos/1").should route_to("tecnicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tecnicos/1").should route_to("tecnicos#destroy", :id => "1")
    end

  end
end
