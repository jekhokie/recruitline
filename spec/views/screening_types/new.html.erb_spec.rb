require 'rails_helper'

RSpec.describe "screening_types/new", type: :view do
  before(:each) do
    assign(:screening_type, ScreeningType.new(
      :name => "MyString",
      :time_minutes => 1
    ))
  end

  it "renders new screening_type form" do
    render

    assert_select "form[action=?][method=?]", screening_types_path, "post" do

      assert_select "input[name=?]", "screening_type[name]"

      assert_select "input[name=?]", "screening_type[time_minutes]"
    end
  end
end
