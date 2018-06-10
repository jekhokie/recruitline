require 'rails_helper'

RSpec.describe "interviewers/edit", type: :view do
  before(:each) do
    @interviewer = assign(:interviewer, Interviewer.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit interviewer form" do
    render

    assert_select "form[action=?][method=?]", interviewer_path(@interviewer), "post" do

      assert_select "input[name=?]", "interviewer[first_name]"

      assert_select "input[name=?]", "interviewer[last_name]"
    end
  end
end
