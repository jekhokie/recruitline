require 'rails_helper'

RSpec.describe "screening_types/index", type: :view do
  before(:each) do
    assign(:screening_types, [
      ScreeningType.create!(
        :name => "Name",
        :time_minutes => 2
      ),
      ScreeningType.create!(
        :name => "Name",
        :time_minutes => 2
      )
    ])
  end

  it "renders a list of screening_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
