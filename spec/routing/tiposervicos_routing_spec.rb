require "spec_helper"

describe TiposervicosController do
  describe "routing" do

    it "routes to #index" do
      get("/tiposervicos").should route_to("tiposervicos#index")
    end

    it "routes to #new" do
      get("/tiposervicos/new").should route_to("tiposervicos#new")
    end

    it "routes to #show" do
      get("/tiposervicos/1").should route_to("tiposervicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tiposervicos/1/edit").should route_to("tiposervicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tiposervicos").should route_to("tiposervicos#create")
    end

    it "routes to #update" do
      put("/tiposervicos/1").should route_to("tiposervicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tiposervicos/1").should route_to("tiposervicos#destroy", :id => "1")
    end

  end
end
