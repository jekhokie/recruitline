require 'rails_helper'

RSpec.describe "recruiters/edit", type: :view do
  before(:each) do
    @recruiter = assign(:recruiter, Recruiter.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit recruiter form" do
    render

    assert_select "form[action=?][method=?]", recruiter_path(@recruiter), "post" do

      assert_select "input[name=?]", "recruiter[first_name]"

      assert_select "input[name=?]", "recruiter[last_name]"
    end
  end
end
