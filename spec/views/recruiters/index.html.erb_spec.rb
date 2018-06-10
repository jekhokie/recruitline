require 'rails_helper'

RSpec.describe "recruiters/index", type: :view do
  before(:each) do
    assign(:recruiters, [
      FactoryBot.create(:recruiter, first_name: "Somename", last_name: "Lastname"),
      FactoryBot.create(:recruiter, first_name: "Somename", last_name: "Lastname")
    ])
  end

  it "renders a list of recruiters" do
    render
    assert_select "tr>td", :text => "Somename Lastname".to_s, :count => 2
  end
end
