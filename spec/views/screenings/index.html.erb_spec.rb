require 'rails_helper'

RSpec.describe "screenings/index", type: :view do
  before(:each) do
    assign(:screenings, [
      Screening.create!(
        :notes => "MyText"
      ),
      Screening.create!(
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of screenings" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
