require 'rails_helper'

RSpec.describe "interviewers/index", type: :view do
  before(:each) do
    assign(:interviewers, [
      FactoryBot.create(:interviewer, first_name: "Somename", last_name: "Lastname"),
      FactoryBot.create(:interviewer, first_name: "Somename", last_name: "Lastname")
    ])
  end

  it "renders a list of interviewers" do
    render
    assert_select "tr>td", :text => "Somename Lastname".to_s, :count => 2
  end
end
