require 'rails_helper'

RSpec.describe ScreeningTypesController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      screening_type = FactoryBot.create(:screening_type)
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      screening_type = FactoryBot.create(:screening_type)
      get :show, params: {id: screening_type.to_param}
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
      screening_type = FactoryBot.create(:screening_type)
      get :edit, params: {id: screening_type.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_screening_type) { FactoryBot.build(:screening_type) }

      it "creates a new ScreeningType" do
        expect {
          post :create, params: {screening_type: valid_screening_type.attributes}
        }.to change(ScreeningType, :count).by(1)
      end

      it "redirects to the created screening_type" do
        post :create, params: {screening_type: valid_screening_type.attributes}
        expect(response).to redirect_to(ScreeningType.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {screening_type: FactoryBot.build(:screening_type_no_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:valid_screening_type) { FactoryBot.build(:screening_type) }

      it "updates the requested screening_type" do
        screening_type = FactoryBot.create(:screening_type)
        put :update, params: {id: screening_type.to_param, screening_type: valid_screening_type.attributes}
        screening_type.reload
        expect(screening_type.name).to eq(valid_screening_type.name)
        expect(screening_type.time_minutes).to eq(valid_screening_type.time_minutes)
      end

      it "redirects to the screening_type" do
        screening_type = FactoryBot.create(:screening_type)
        put :update, params: {id: screening_type.to_param, screening_type: valid_screening_type.attributes}
        expect(response).to redirect_to(screening_type)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        screening_type = FactoryBot.create(:screening_type)
        put :update, params: {id: screening_type.to_param, screening_type: FactoryBot.build(:screening_type_no_name).attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested screening_type" do
      screening_type = FactoryBot.create(:screening_type)
      expect {
        delete :destroy, params: {id: screening_type.to_param}
      }.to change(ScreeningType, :count).by(-1)
    end

    it "redirects to the screening_types list" do
      screening_type = FactoryBot.create(:screening_type)
      delete :destroy, params: {id: screening_type.to_param}
      expect(response).to redirect_to(screening_types_url)
    end
  end
end
