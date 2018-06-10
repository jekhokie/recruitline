require 'rails_helper'

RSpec.describe CandidatesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      candidate = FactoryBot.create(:candidate)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      candidate = FactoryBot.create(:candidate)
      get :show, params: {id: candidate.to_param}
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
      candidate = FactoryBot.create(:candidate)
      get :edit, params: {id: candidate.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_candidate) { FactoryBot.build(:candidate) }

      it "creates a new Candidate" do
        expect {
          post :create, params: {recruiter_id: valid_candidate.recruiter.id,
                                 requisition_id: valid_candidate.requisition.id,
                                 candidate: valid_candidate.attributes}
        }.to change(Candidate, :count).by(1)
      end

      it "redirects to the created candidate" do
        post :create, params: {recruiter_id: valid_candidate.recruiter.id,
                               requisition_id: valid_candidate.requisition.id,
                               candidate: valid_candidate.attributes}
        expect(response).to redirect_to(Candidate.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {candidate: FactoryBot.build(:candidate_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_candidate) { FactoryBot.build(:candidate) }

      it "updates the requested candidate" do
        candidate = FactoryBot.create(:candidate)
        put :update, params: {id: candidate.to_param, candidate: valid_candidate.attributes}
        candidate.reload
        expect(candidate.first_name).to eq(valid_candidate.first_name)
        expect(candidate.last_name).to eq(valid_candidate.last_name)
      end

      it "redirects to the candidate" do
        candidate = FactoryBot.create(:candidate)
        put :update, params: {id: candidate.to_param, candidate: valid_candidate.attributes}
        expect(response).to redirect_to(candidate)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        candidate = FactoryBot.create(:candidate)
        put :update, params: {id: candidate.to_param, candidate: FactoryBot.build(:candidate_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested candidate" do
      candidate = FactoryBot.create(:candidate)
      expect {
        delete :destroy, params: {id: candidate.to_param}
      }.to change(Candidate, :count).by(-1)
    end

    it "redirects to the candidates list" do
      candidate = FactoryBot.create(:candidate)
      delete :destroy, params: {id: candidate.to_param}
      expect(response).to redirect_to(candidates_url)
    end
  end
end
