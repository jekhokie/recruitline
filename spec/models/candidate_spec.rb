require 'rails_helper'

RSpec.describe Candidate, type: :model do
  it "can be instantiated" do
    expect(Candidate.new).to be_an_instance_of(Candidate)
  end

  it { should belong_to :requisition }
	it { should belong_to :recruiter }

  describe "valid?" do
    # first_name
    it "returns false when no first_name is specified" do
      expect(FactoryBot.build(:candidate, first_name: "")).to be_invalid
    end
  end

  describe "full_name" do
    it "returns the concatenation of the first_name and last_name" do
      expect(FactoryBot.build(:candidate, first_name: "a", last_name: "b").full_name).to eq("a b")
    end
  end
end
