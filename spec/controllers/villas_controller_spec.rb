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

RSpec.describe VillasController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Villa. As you add validations to Villa, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VillasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all villas as @villas" do
      villa = Villa.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:villas)).to eq([villa])
    end
  end

  describe "GET #show" do
    it "assigns the requested villa as @villa" do
      villa = Villa.create! valid_attributes
      get :show, {:id => villa.to_param}, valid_session
      expect(assigns(:villa)).to eq(villa)
    end
  end

  describe "GET #new" do
    it "assigns a new villa as @villa" do
      get :new, {}, valid_session
      expect(assigns(:villa)).to be_a_new(Villa)
    end
  end

  describe "GET #edit" do
    it "assigns the requested villa as @villa" do
      villa = Villa.create! valid_attributes
      get :edit, {:id => villa.to_param}, valid_session
      expect(assigns(:villa)).to eq(villa)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Villa" do
        expect {
          post :create, {:villa => valid_attributes}, valid_session
        }.to change(Villa, :count).by(1)
      end

      it "assigns a newly created villa as @villa" do
        post :create, {:villa => valid_attributes}, valid_session
        expect(assigns(:villa)).to be_a(Villa)
        expect(assigns(:villa)).to be_persisted
      end

      it "redirects to the created villa" do
        post :create, {:villa => valid_attributes}, valid_session
        expect(response).to redirect_to(Villa.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved villa as @villa" do
        post :create, {:villa => invalid_attributes}, valid_session
        expect(assigns(:villa)).to be_a_new(Villa)
      end

      it "re-renders the 'new' template" do
        post :create, {:villa => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested villa" do
        villa = Villa.create! valid_attributes
        put :update, {:id => villa.to_param, :villa => new_attributes}, valid_session
        villa.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested villa as @villa" do
        villa = Villa.create! valid_attributes
        put :update, {:id => villa.to_param, :villa => valid_attributes}, valid_session
        expect(assigns(:villa)).to eq(villa)
      end

      it "redirects to the villa" do
        villa = Villa.create! valid_attributes
        put :update, {:id => villa.to_param, :villa => valid_attributes}, valid_session
        expect(response).to redirect_to(villa)
      end
    end

    context "with invalid params" do
      it "assigns the villa as @villa" do
        villa = Villa.create! valid_attributes
        put :update, {:id => villa.to_param, :villa => invalid_attributes}, valid_session
        expect(assigns(:villa)).to eq(villa)
      end

      it "re-renders the 'edit' template" do
        villa = Villa.create! valid_attributes
        put :update, {:id => villa.to_param, :villa => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested villa" do
      villa = Villa.create! valid_attributes
      expect {
        delete :destroy, {:id => villa.to_param}, valid_session
      }.to change(Villa, :count).by(-1)
    end

    it "redirects to the villas list" do
      villa = Villa.create! valid_attributes
      delete :destroy, {:id => villa.to_param}, valid_session
      expect(response).to redirect_to(villas_url)
    end
  end

end