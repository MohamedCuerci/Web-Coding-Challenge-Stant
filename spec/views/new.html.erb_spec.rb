require 'rails_helper'

RSpec.describe "conferences/new", type: :view do
  before(:each) do
    assign(:conference, Conference.new(
      title: "MyText",
      time: "MyString"
    ))
  end

  it "renders new conference form" do
    render

    assert_select "form[action=?][method=?]", conferences_path, "post" do

      assert_select "textarea[name=?]", "conference[title]"

      assert_select "input[name=?]", "conference[time]"
    end
  end
end
