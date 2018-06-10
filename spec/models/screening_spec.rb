require 'rails_helper'

RSpec.describe Screening, type: :model do
  it "can be instantiated" do
    expect(Screening.new).to be_an_instance_of(Screening)
  end

	it { should belong_to :interviewer }
	it { should belong_to :candidate }
end
