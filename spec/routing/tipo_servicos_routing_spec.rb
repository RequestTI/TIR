require "spec_helper"

describe TipoServicosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_servicos").should route_to("tipo_servicos#index")
    end

    it "routes to #new" do
      get("/tipo_servicos/new").should route_to("tipo_servicos#new")
    end

    it "routes to #show" do
      get("/tipo_servicos/1").should route_to("tipo_servicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_servicos/1/edit").should route_to("tipo_servicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_servicos").should route_to("tipo_servicos#create")
    end

    it "routes to #update" do
      put("/tipo_servicos/1").should route_to("tipo_servicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_servicos/1").should route_to("tipo_servicos#destroy", :id => "1")
    end

  end
end
