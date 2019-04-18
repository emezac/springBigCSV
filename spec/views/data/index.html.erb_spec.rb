require 'rails_helper'

RSpec.describe "data/index", type: :view do
  before(:each) do
    assign(:data, [
      Datum.create!(
        :identifier => "Identifier",
        :rownumber => 2,
        :phone => "Phone",
        :email => "Email",
        :first => "First",
        :last => "Last"
      ),
      Datum.create!(
        :identifier => "Identifier",
        :rownumber => 2,
        :phone => "Phone",
        :email => "Email",
        :first => "First",
        :last => "Last"
      )
    ])
  end

  it "renders a list of data" do
    render
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
  end
end
