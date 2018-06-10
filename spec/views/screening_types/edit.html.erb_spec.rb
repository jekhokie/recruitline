require 'rails_helper'

RSpec.describe "screening_types/edit", type: :view do
  before(:each) do
    @screening_type = assign(:screening_type, ScreeningType.create!(
      :name => "MyString",
      :time_minutes => 1
    ))
  end

  it "renders the edit screening_type form" do
    render

    assert_select "form[action=?][method=?]", screening_type_path(@screening_type), "post" do

      assert_select "input[name=?]", "screening_type[name]"

      assert_select "input[name=?]", "screening_type[time_minutes]"
    end
  end
end
