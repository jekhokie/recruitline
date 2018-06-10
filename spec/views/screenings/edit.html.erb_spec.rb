require 'rails_helper'

RSpec.describe "screenings/edit", type: :view do
  before(:each) do
    @screening = assign(:screening, FactoryBot.create(:screening, notes: "My Notes"))
  end

  it "renders the edit screening form" do
    render

    assert_select "form[action=?][method=?]", screening_path(@screening), "post" do
      assert_select "textarea[name=?]", "screening[notes]"
    end
  end
end
