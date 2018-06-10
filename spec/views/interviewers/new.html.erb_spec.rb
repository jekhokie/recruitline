require 'rails_helper'

RSpec.describe "interviewers/new", type: :view do
  before(:each) do
    assign(:interviewer, Interviewer.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new interviewer form" do
    render

    assert_select "form[action=?][method=?]", interviewers_path, "post" do

      assert_select "input[name=?]", "interviewer[first_name]"

      assert_select "input[name=?]", "interviewer[last_name]"
    end
  end
end
