require "spec_helper"

describe AtendimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/atendimentos").should route_to("atendimentos#index")
    end

    it "routes to #new" do
      get("/atendimentos/new").should route_to("atendimentos#new")
    end

    it "routes to #show" do
      get("/atendimentos/1").should route_to("atendimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/atendimentos/1/edit").should route_to("atendimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/atendimentos").should route_to("atendimentos#create")
    end

    it "routes to #update" do
      put("/atendimentos/1").should route_to("atendimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/atendimentos/1").should route_to("atendimentos#destroy", :id => "1")
    end

  end
end
