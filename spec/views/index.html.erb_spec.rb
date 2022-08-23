require 'rails_helper'

RSpec.describe "conferences/index", type: :view do
  before(:each) do
    assign(:conferences, [
      Conference.create!(
        title: "MyText",
        time: "Time"
      )
    ])
  end

  it "renders a list of conferences" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 1
  end
end
