require 'rails_helper'

RSpec.describe InterviewersController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      interviewer = FactoryBot.create(:interviewer)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      interviewer = FactoryBot.create(:interviewer)
      get :show, params: {id: interviewer.to_param}
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
      interviewer = FactoryBot.create(:interviewer)
      get :edit, params: {id: interviewer.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_interviewer) { FactoryBot.build(:interviewer) }

      it "creates a new Interviewer" do
        expect {
          post :create, params: {interviewer: valid_interviewer.attributes}
        }.to change(Interviewer, :count).by(1)
      end

      it "redirects to the created interviewer" do
        post :create, params: {interviewer: valid_interviewer.attributes}
        expect(response).to redirect_to(Interviewer.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {interviewer: FactoryBot.build(:interviewer_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_interviewer) { FactoryBot.build(:interviewer) }

      it "updates the requested interviewer" do
        interviewer = FactoryBot.create(:interviewer)
        put :update, params: {id: interviewer.to_param, interviewer: valid_interviewer.attributes}
        interviewer.reload
        expect(interviewer.first_name).to eq(valid_interviewer.first_name)
        expect(interviewer.last_name).to eq(valid_interviewer.last_name)
      end

      it "redirects to the interviewer" do
        interviewer = FactoryBot.create(:interviewer)
        put :update, params: {id: interviewer.to_param, interviewer: valid_interviewer.attributes}
        expect(response).to redirect_to(interviewer)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        interviewer = FactoryBot.create(:interviewer)
        put :update, params: {id: interviewer.to_param, interviewer: FactoryBot.build(:interviewer_no_first_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested interviewer" do
      interviewer = FactoryBot.create(:interviewer)
      expect {
        delete :destroy, params: {id: interviewer.to_param}
      }.to change(Interviewer, :count).by(-1)
    end

    it "redirects to the interviewers list" do
      interviewer = FactoryBot.create(:interviewer)
      delete :destroy, params: {id: interviewer.to_param}
      expect(response).to redirect_to(interviewers_url)
    end
  end
end
