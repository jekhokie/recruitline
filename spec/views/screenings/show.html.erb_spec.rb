require 'rails_helper'

RSpec.describe "screenings/show", type: :view do
  let(:screening) { FactoryBot.create(:screening) }

  before(:each) do
    @screening = assign(:screening, screening)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{screening.notes}/)
  end
end
