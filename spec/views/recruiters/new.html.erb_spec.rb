require 'rails_helper'

RSpec.describe "recruiters/new", type: :view do
  before(:each) do
    assign(:recruiter, Recruiter.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new recruiter form" do
    render

    assert_select "form[action=?][method=?]", recruiters_path, "post" do

      assert_select "input[name=?]", "recruiter[first_name]"

      assert_select "input[name=?]", "recruiter[last_name]"
    end
  end
end
