require 'rails_helper'

RSpec.describe "surveys/edit", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :name => "MyString",
      :description => "MyString",
      :user_id => ""
    ))
  end

  it "renders the edit survey form" do
    render

    assert_select "form[action=?][method=?]", survey_path(@survey), "post" do

      assert_select "input#survey_name[name=?]", "survey[name]"

      assert_select "input#survey_description[name=?]", "survey[description]"

      assert_select "input#survey_user_id[name=?]", "survey[user_id]"
    end
  end
end
