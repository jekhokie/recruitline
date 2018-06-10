require 'rails_helper'

RSpec.describe "screenings/new", type: :view do
  before(:each) do
    assign(:screening, Screening.new(
      :notes => "MyText"
    ))
  end

  it "renders new screening form" do
    render

    assert_select "form[action=?][method=?]", screenings_path, "post" do

      assert_select "textarea[name=?]", "screening[notes]"
    end
  end
end
