require 'rails_helper'

RSpec.describe "interviewers/index", type: :view do
  before(:each) do
    assign(:interviewers, [
      Interviewer.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Interviewer.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of interviewers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
