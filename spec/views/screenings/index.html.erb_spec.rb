require 'rails_helper'

RSpec.describe "screenings/index", type: :view do
  before(:each) do
    assign(:screenings, [
      FactoryBot.create(:screening, notes: "My Notes"),
      FactoryBot.create(:screening, notes: "My Notes")
    ])
  end

  it "renders a list of screenings" do
    render
    assert_select "tr>td", :text => "My Notes".to_s, :count => 2
  end
end
