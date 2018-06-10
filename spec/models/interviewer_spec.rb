require 'rails_helper'

RSpec.describe Interviewer, type: :model do
  it "can be instantiated" do
    expect(Interviewer.new).to be_an_instance_of(Interviewer)
  end

  describe "valid?" do
    # first_name
    it "returns false when no first_name is specified" do
      expect(FactoryBot.build(:interviewer, first_name: "")).to be_invalid
    end

    # last_name
    it "returns false when no last_name is specified" do
      expect(FactoryBot.build(:interviewer, last_name: "")).to be_invalid
    end
  end
end
