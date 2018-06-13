require 'rails_helper'

RSpec.describe Decision, type: :model do
  it "can be instantiated" do
    expect(Decision.new).to be_an_instance_of(Decision)
  end

	it { should have_many :candidates }

  describe "valid?" do
    # name
    it "returns false when no name is specified" do
      expect(FactoryBot.build(:decision_no_name)).to be_invalid
    end
  end
end
