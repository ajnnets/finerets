require 'rails_helper'

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

RSpec.describe ContinentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Continent. As you add validations to Continent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContinentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all continents as @continents" do
      continent = Continent.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:continents)).to eq([continent])
    end
  end

  describe "GET #show" do
    it "assigns the requested continent as @continent" do
      continent = Continent.create! valid_attributes
      get :show, {:id => continent.to_param}, valid_session
      expect(assigns(:continent)).to eq(continent)
    end
  end

  describe "GET #new" do
    it "assigns a new continent as @continent" do
      get :new, {}, valid_session
      expect(assigns(:continent)).to be_a_new(Continent)
    end
  end

  describe "GET #edit" do
    it "assigns the requested continent as @continent" do
      continent = Continent.create! valid_attributes
      get :edit, {:id => continent.to_param}, valid_session
      expect(assigns(:continent)).to eq(continent)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Continent" do
        expect {
          post :create, {:continent => valid_attributes}, valid_session
        }.to change(Continent, :count).by(1)
      end

      it "assigns a newly created continent as @continent" do
        post :create, {:continent => valid_attributes}, valid_session
        expect(assigns(:continent)).to be_a(Continent)
        expect(assigns(:continent)).to be_persisted
      end

      it "redirects to the created continent" do
        post :create, {:continent => valid_attributes}, valid_session
        expect(response).to redirect_to(Continent.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved continent as @continent" do
        post :create, {:continent => invalid_attributes}, valid_session
        expect(assigns(:continent)).to be_a_new(Continent)
      end

      it "re-renders the 'new' template" do
        post :create, {:continent => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested continent" do
        continent = Continent.create! valid_attributes
        put :update, {:id => continent.to_param, :continent => new_attributes}, valid_session
        continent.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested continent as @continent" do
        continent = Continent.create! valid_attributes
        put :update, {:id => continent.to_param, :continent => valid_attributes}, valid_session
        expect(assigns(:continent)).to eq(continent)
      end

      it "redirects to the continent" do
        continent = Continent.create! valid_attributes
        put :update, {:id => continent.to_param, :continent => valid_attributes}, valid_session
        expect(response).to redirect_to(continent)
      end
    end

    context "with invalid params" do
      it "assigns the continent as @continent" do
        continent = Continent.create! valid_attributes
        put :update, {:id => continent.to_param, :continent => invalid_attributes}, valid_session
        expect(assigns(:continent)).to eq(continent)
      end

      it "re-renders the 'edit' template" do
        continent = Continent.create! valid_attributes
        put :update, {:id => continent.to_param, :continent => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested continent" do
      continent = Continent.create! valid_attributes
      expect {
        delete :destroy, {:id => continent.to_param}, valid_session
      }.to change(Continent, :count).by(-1)
    end

    it "redirects to the continents list" do
      continent = Continent.create! valid_attributes
      delete :destroy, {:id => continent.to_param}, valid_session
      expect(response).to redirect_to(continents_url)
    end
  end

end
