require 'rails_helper'

RSpec.describe "screenings/show", type: :view do
  before(:each) do
    @screening = assign(:screening, Screening.create!(
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
