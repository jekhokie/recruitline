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

  describe "full_name" do
    it "returns the concatenation of the first_name and last_name" do
      expect(FactoryBot.build(:interviewer, first_name: "a", last_name: "b").full_name).to eq("a b")
    end
  end
end
