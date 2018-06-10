require 'rails_helper'

RSpec.describe "ScreeningTypes", type: :request do
  describe "GET /screening_types" do
    it "works! (now write some real specs)" do
      get screening_types_path
      expect(response).to have_http_status(200)
    end
  end
end
