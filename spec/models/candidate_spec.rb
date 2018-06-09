require 'rails_helper'

RSpec.describe Candidate, type: :model do
  it "can be instantiated" do
    expect(Candidate.new).to be_an_instance_of(Candidate)
  end

  describe "valid?" do
    # first_name
    it "returns false when no first_name is specified" do
      expect(FactoryBot.build(:candidate, first_name: "")).to be_invalid
    end
  end
end
