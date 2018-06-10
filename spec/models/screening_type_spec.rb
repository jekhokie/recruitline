require 'rails_helper'

RSpec.describe ScreeningType, type: :model do
  it "can be instantiated" do
    expect(ScreeningType.new).to be_an_instance_of(ScreeningType)
  end

  describe "valid?" do
    # name
    it "returns false when no name is specified" do
      expect(FactoryBot.build(:screening_type, name: "")).to be_invalid
    end

    # time_minutes
    it "returns false when no time_minutes is specified" do
      expect(FactoryBot.build(:screening_type, time_minutes: "")).to be_invalid
    end
  end
end
