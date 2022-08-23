require 'rails_helper'

RSpec.describe "conferences/edit", type: :view do
  before(:each) do
    @conference = assign(:conference, Conference.create!(
      title: "MyText",
      time: "MyString"
    ))
  end

  it "renders the edit conference form" do
    render

    assert_select "form[action=?][method=?]", conference_path(@conference), "post" do

      assert_select "textarea[name=?]", "conference[title]"

      assert_select "input[name=?]", "conference[time]"
    end
  end
end
