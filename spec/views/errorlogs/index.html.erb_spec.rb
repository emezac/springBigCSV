require 'rails_helper'

RSpec.describe "errorlogs/index", type: :view do
  before(:each) do
    assign(:errorlogs, [
      Errorlog.create!(
        :identifier => "Identifier",
        :rownumber => 2,
        :description => "MyText"
      ),
      Errorlog.create!(
        :identifier => "Identifier",
        :rownumber => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of errorlogs" do
    render
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
