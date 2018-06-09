require 'rails_helper'

RSpec.describe RequisitionsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      requisition = FactoryBot.create(:requisition)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      requisition = FactoryBot.create(:requisition)
      get :show, params: {id: requisition.to_param}
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
      requisition = FactoryBot.create(:requisition)
      get :edit, params: {id: requisition.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_requisition) { FactoryBot.build(:requisition) }

      it "creates a new Requisition" do
        expect {
          post :create, params: {recruiter_id: valid_requisition.recruiter.id,
                                 requisition: valid_requisition.attributes}
        }.to change(Requisition, :count).by(1)
      end

      it "redirects to the created requisition" do
        post :create, params: {recruiter_id: valid_requisition.recruiter.id,
                               requisition: valid_requisition.attributes}
        expect(response).to redirect_to(Requisition.last)
      end
    end

    context "with invalid params" do
      let(:requisition_no_title) { FactoryBot.build(:requisition_no_title) }

      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {recruiter_id: requisition_no_title.recruiter.id,
                               requisition: requisition_no_title.attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_requisition) { FactoryBot.build(:requisition) }

      it "updates the requested requisition" do
        requisition = FactoryBot.create(:requisition)
        put :update, params: {id: requisition.to_param, requisition: valid_requisition.attributes}
        requisition.reload
        expect(requisition.title).to eq(valid_requisition.title)
      end

      it "redirects to the requisition" do
        requisition = FactoryBot.create(:requisition)
        put :update, params: {id: requisition.to_param, requisition: valid_requisition.attributes}
        expect(response).to redirect_to(requisition)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        requisition = FactoryBot.create(:requisition)
        put :update, params: {id: requisition.to_param, requisition: FactoryBot.build(:requisition_no_title).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested requisition" do
      requisition = FactoryBot.create(:requisition)
      expect {
        delete :destroy, params: {id: requisition.to_param}
      }.to change(Requisition, :count).by(-1)
    end

    it "redirects to the requisition list" do
      requisition = FactoryBot.create(:requisition)
      delete :destroy, params: {id: requisition.to_param}
      expect(response).to redirect_to(requisitions_url)
    end
  end
end
