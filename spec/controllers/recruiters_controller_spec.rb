require 'rails_helper'

RSpec.describe RecruitersController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      recruiter = FactoryBot.create(:recruiter)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      recruiter = FactoryBot.create(:recruiter)
      get :show, params: {id: recruiter.to_param}
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
      recruiter = FactoryBot.create(:recruiter)
      get :edit, params: {id: recruiter.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_recruiter) { FactoryBot.build(:recruiter) }

      it "creates a new Recruiter" do
        expect {
          post :create, params: {recruiter: valid_recruiter.attributes}
        }.to change(Recruiter, :count).by(1)
      end

      it "redirects to the created recruiter" do
        post :create, params: {recruiter: valid_recruiter.attributes}
        expect(response).to redirect_to(Recruiter.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {recruiter: FactoryBot.build(:recruiter_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_recruiter) { FactoryBot.build(:recruiter) }

      it "updates the requested recruiter" do
        recruiter = FactoryBot.create(:recruiter)
        put :update, params: {id: recruiter.to_param, recruiter: valid_recruiter.attributes}
        recruiter.reload
        expect(recruiter.first_name).to eq(valid_recruiter.first_name)
        expect(recruiter.last_name).to eq(valid_recruiter.last_name)
      end

      it "redirects to the recruiter" do
        recruiter = FactoryBot.create(:recruiter)
        put :update, params: {id: recruiter.to_param, recruiter: valid_recruiter.attributes}
        expect(response).to redirect_to(recruiter)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        recruiter = FactoryBot.create(:recruiter)
        put :update, params: {id: recruiter.to_param, recruiter: FactoryBot.build(:recruiter_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested recruiter" do
      recruiter = FactoryBot.create(:recruiter)
      expect {
        delete :destroy, params: {id: recruiter.to_param}
      }.to change(Recruiter, :count).by(-1)
    end

    it "redirects to the recruiters list" do
      recruiter = FactoryBot.create(:recruiter)
      delete :destroy, params: {id: recruiter.to_param}
      expect(response).to redirect_to(recruiters_url)
    end
  end
end
