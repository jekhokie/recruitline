require 'rails_helper'

RSpec.describe "screening_types/show", type: :view do
  before(:each) do
    @screening_type = assign(:screening_type, ScreeningType.create!(
      :name => "Name",
      :time_minutes => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
