require 'rails_helper'

RSpec.describe DecisionsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      decision = FactoryBot.create(:decision)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      decision = FactoryBot.create(:decision)
      get :show, params: {id: decision.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      decision = FactoryBot.create(:decision)
      get :edit, params: {id: decision.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_decision) { FactoryBot.build(:decision) }

      it "creates a new Decision" do
        expect {
          post :create, params: {decision: valid_decision.attributes}
        }.to change(Decision, :count).by(1)
      end

      it "redirects to the created decision" do
        post :create, params: {decision: valid_decision.attributes}
        expect(response).to redirect_to(Decision.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {decision: FactoryBot.build(:decision_no_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_decision) { FactoryBot.build(:decision) }

      it "updates the requested decision" do
        decision = FactoryBot.create(:decision)
        put :update, params: {id: decision.to_param, decision: valid_decision.attributes}
        decision.reload
        expect(decision.name).to eq(valid_decision.name)
      end

      it "redirects to the decision" do
        decision = FactoryBot.create(:decision)
        put :update, params: {id: decision.to_param, decision: valid_decision.attributes}
        expect(response).to redirect_to(decision)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        decision = FactoryBot.create(:decision)
        put :update, params: {id: decision.to_param, decision: FactoryBot.build(:decision_no_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested decision" do
      decision = FactoryBot.create(:decision)
      expect {
        delete :destroy, params: {id: decision.to_param}
      }.to change(Decision, :count).by(-1)
    end

    it "redirects to the decisions list" do
      decision = FactoryBot.create(:decision)
      delete :destroy, params: {id: decision.to_param}
      expect(response).to redirect_to(decisions_url)
    end
  end
end
