require 'rails_helper'

RSpec.describe Screening, type: :model do
  it "can be instantiated" do
    expect(Screening.new).to be_an_instance_of(Screening)
  end

	it { should belong_to :interviewer }
	it { should belong_to :candidate }

  describe "valid?" do
    # interviewer
    it "returns false when no interviewer is specified" do
      expect(FactoryBot.build(:screening, interviewer: nil)).to be_invalid
    end

    # candidate
    it "returns false when no candidate is specified" do
      expect(FactoryBot.build(:screening, candidate: nil)).to be_invalid
    end

    # screening_type
    it "returns false when no screening_type is specified" do
      expect(FactoryBot.build(:screening, screening_type: nil)).to be_invalid
    end
  end
end
