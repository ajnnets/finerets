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

RSpec.describe PopularDestinationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # PopularDestination. As you add validations to PopularDestination, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PopularDestinationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all popular_destinations as @popular_destinations" do
      popular_destination = PopularDestination.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:popular_destinations)).to eq([popular_destination])
    end
  end

  describe "GET #show" do
    it "assigns the requested popular_destination as @popular_destination" do
      popular_destination = PopularDestination.create! valid_attributes
      get :show, {:id => popular_destination.to_param}, valid_session
      expect(assigns(:popular_destination)).to eq(popular_destination)
    end
  end

  describe "GET #new" do
    it "assigns a new popular_destination as @popular_destination" do
      get :new, {}, valid_session
      expect(assigns(:popular_destination)).to be_a_new(PopularDestination)
    end
  end

  describe "GET #edit" do
    it "assigns the requested popular_destination as @popular_destination" do
      popular_destination = PopularDestination.create! valid_attributes
      get :edit, {:id => popular_destination.to_param}, valid_session
      expect(assigns(:popular_destination)).to eq(popular_destination)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new PopularDestination" do
        expect {
          post :create, {:popular_destination => valid_attributes}, valid_session
        }.to change(PopularDestination, :count).by(1)
      end

      it "assigns a newly created popular_destination as @popular_destination" do
        post :create, {:popular_destination => valid_attributes}, valid_session
        expect(assigns(:popular_destination)).to be_a(PopularDestination)
        expect(assigns(:popular_destination)).to be_persisted
      end

      it "redirects to the created popular_destination" do
        post :create, {:popular_destination => valid_attributes}, valid_session
        expect(response).to redirect_to(PopularDestination.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved popular_destination as @popular_destination" do
        post :create, {:popular_destination => invalid_attributes}, valid_session
        expect(assigns(:popular_destination)).to be_a_new(PopularDestination)
      end

      it "re-renders the 'new' template" do
        post :create, {:popular_destination => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested popular_destination" do
        popular_destination = PopularDestination.create! valid_attributes
        put :update, {:id => popular_destination.to_param, :popular_destination => new_attributes}, valid_session
        popular_destination.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested popular_destination as @popular_destination" do
        popular_destination = PopularDestination.create! valid_attributes
        put :update, {:id => popular_destination.to_param, :popular_destination => valid_attributes}, valid_session
        expect(assigns(:popular_destination)).to eq(popular_destination)
      end

      it "redirects to the popular_destination" do
        popular_destination = PopularDestination.create! valid_attributes
        put :update, {:id => popular_destination.to_param, :popular_destination => valid_attributes}, valid_session
        expect(response).to redirect_to(popular_destination)
      end
    end

    context "with invalid params" do
      it "assigns the popular_destination as @popular_destination" do
        popular_destination = PopularDestination.create! valid_attributes
        put :update, {:id => popular_destination.to_param, :popular_destination => invalid_attributes}, valid_session
        expect(assigns(:popular_destination)).to eq(popular_destination)
      end

      it "re-renders the 'edit' template" do
        popular_destination = PopularDestination.create! valid_attributes
        put :update, {:id => popular_destination.to_param, :popular_destination => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested popular_destination" do
      popular_destination = PopularDestination.create! valid_attributes
      expect {
        delete :destroy, {:id => popular_destination.to_param}, valid_session
      }.to change(PopularDestination, :count).by(-1)
    end

    it "redirects to the popular_destinations list" do
      popular_destination = PopularDestination.create! valid_attributes
      delete :destroy, {:id => popular_destination.to_param}, valid_session
      expect(response).to redirect_to(popular_destinations_url)
    end
  end

end
