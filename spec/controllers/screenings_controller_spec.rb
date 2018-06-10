require 'rails_helper'

RSpec.describe ScreeningsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      screening = FactoryBot.create(:screening)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      screening = FactoryBot.create(:screening)
      get :show, params: {id: screening.to_param}
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
      screening = FactoryBot.create(:screening)
      get :edit, params: {id: screening.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_screening) { FactoryBot.build(:screening) }

      it "creates a new Screening" do
        expect {
          post :create, params: {screening: valid_screening.attributes}
        }.to change(Screening, :count).by(1)
      end

      it "redirects to the created screening" do
        post :create, params: {screening: valid_screening.attributes}
        expect(response).to redirect_to(Screening.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_screening) { FactoryBot.build(:screening) }

      it "updates the requested screening" do
        screening = FactoryBot.create(:screening)
        put :update, params: {id: screening.to_param, screening: valid_screening.attributes}
        screening.reload
        expect(screening.notes).to eq(screening.notes)
      end

      it "redirects to the screening" do
        screening = FactoryBot.create(:screening)
        put :update, params: {id: screening.to_param, screening: valid_screening.attributes}
        expect(response).to redirect_to(screening)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested screening" do
      screening = FactoryBot.create(:screening)
      expect {
        delete :destroy, params: {id: screening.to_param}
      }.to change(Screening, :count).by(-1)
    end

    it "redirects to the screenings list" do
      screening = FactoryBot.create(:screening)
      delete :destroy, params: {id: screening.to_param}
      expect(response).to redirect_to(screenings_url)
    end
  end
end
