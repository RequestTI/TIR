require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TiposervicosController do

  # This should return the minimal set of attributes required to create a valid
  # Tiposervico. As you add validations to Tiposervico, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "titulo" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TiposervicosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tiposervicos as @tiposervicos" do
      tiposervico = Tiposervico.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tiposervicos).should eq([tiposervico])
    end
  end

  describe "GET show" do
    it "assigns the requested tiposervico as @tiposervico" do
      tiposervico = Tiposervico.create! valid_attributes
      get :show, {:id => tiposervico.to_param}, valid_session
      assigns(:tiposervico).should eq(tiposervico)
    end
  end

  describe "GET new" do
    it "assigns a new tiposervico as @tiposervico" do
      get :new, {}, valid_session
      assigns(:tiposervico).should be_a_new(Tiposervico)
    end
  end

  describe "GET edit" do
    it "assigns the requested tiposervico as @tiposervico" do
      tiposervico = Tiposervico.create! valid_attributes
      get :edit, {:id => tiposervico.to_param}, valid_session
      assigns(:tiposervico).should eq(tiposervico)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tiposervico" do
        expect {
          post :create, {:tiposervico => valid_attributes}, valid_session
        }.to change(Tiposervico, :count).by(1)
      end

      it "assigns a newly created tiposervico as @tiposervico" do
        post :create, {:tiposervico => valid_attributes}, valid_session
        assigns(:tiposervico).should be_a(Tiposervico)
        assigns(:tiposervico).should be_persisted
      end

      it "redirects to the created tiposervico" do
        post :create, {:tiposervico => valid_attributes}, valid_session
        response.should redirect_to(Tiposervico.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tiposervico as @tiposervico" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tiposervico.any_instance.stub(:save).and_return(false)
        post :create, {:tiposervico => { "titulo" => "invalid value" }}, valid_session
        assigns(:tiposervico).should be_a_new(Tiposervico)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tiposervico.any_instance.stub(:save).and_return(false)
        post :create, {:tiposervico => { "titulo" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tiposervico" do
        tiposervico = Tiposervico.create! valid_attributes
        # Assuming there are no other tiposervicos in the database, this
        # specifies that the Tiposervico created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tiposervico.any_instance.should_receive(:update_attributes).with({ "titulo" => "MyString" })
        put :update, {:id => tiposervico.to_param, :tiposervico => { "titulo" => "MyString" }}, valid_session
      end

      it "assigns the requested tiposervico as @tiposervico" do
        tiposervico = Tiposervico.create! valid_attributes
        put :update, {:id => tiposervico.to_param, :tiposervico => valid_attributes}, valid_session
        assigns(:tiposervico).should eq(tiposervico)
      end

      it "redirects to the tiposervico" do
        tiposervico = Tiposervico.create! valid_attributes
        put :update, {:id => tiposervico.to_param, :tiposervico => valid_attributes}, valid_session
        response.should redirect_to(tiposervico)
      end
    end

    describe "with invalid params" do
      it "assigns the tiposervico as @tiposervico" do
        tiposervico = Tiposervico.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tiposervico.any_instance.stub(:save).and_return(false)
        put :update, {:id => tiposervico.to_param, :tiposervico => { "titulo" => "invalid value" }}, valid_session
        assigns(:tiposervico).should eq(tiposervico)
      end

      it "re-renders the 'edit' template" do
        tiposervico = Tiposervico.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tiposervico.any_instance.stub(:save).and_return(false)
        put :update, {:id => tiposervico.to_param, :tiposervico => { "titulo" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tiposervico" do
      tiposervico = Tiposervico.create! valid_attributes
      expect {
        delete :destroy, {:id => tiposervico.to_param}, valid_session
      }.to change(Tiposervico, :count).by(-1)
    end

    it "redirects to the tiposervicos list" do
      tiposervico = Tiposervico.create! valid_attributes
      delete :destroy, {:id => tiposervico.to_param}, valid_session
      response.should redirect_to(tiposervicos_url)
    end
  end

end
