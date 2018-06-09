require 'rails_helper'

RSpec.describe Requisition, type: :model do
  it "can be instantiated" do
    expect(Requisition.new).to be_an_instance_of(Requisition)
  end

  describe "valid?" do
    # title
    it "returns false when no title is specified" do
      expect(FactoryBot.build(:requisition, title: "")).to be_invalid
    end

    # open_date
    it "returns false when no open_date is specified" do
      expect(FactoryBot.build(:requisition, open_date: "")).to be_invalid
    end
  end
end
