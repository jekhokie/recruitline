require 'rails_helper'

RSpec.describe "requisitions/index.html.erb", type: :view do
  before(:each) do
    assign(:requisitions, [
      FactoryBot.create(:requisition, title: "Title"),
      FactoryBot.create(:requisition, title: "Title")
    ])
  end

  it "renders a list of requisitions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
