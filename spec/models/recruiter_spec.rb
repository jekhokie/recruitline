require 'rails_helper'

RSpec.describe Recruiter, type: :model do
  it "can be instantiated" do
    expect(Recruiter.new).to be_an_instance_of(Recruiter)
  end

  describe "valid?" do
    # first_name
    it "returns false when no first_name is specified" do
      expect(FactoryBot.build(:recruiter, first_name: "")).to be_invalid
    end

    # last_name
    it "returns false when no last_name is specified" do
      expect(FactoryBot.build(:recruiter, last_name: "")).to be_invalid
    end
  end
end
