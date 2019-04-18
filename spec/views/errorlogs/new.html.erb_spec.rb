require 'rails_helper'

RSpec.describe "errorlogs/new", type: :view do
  before(:each) do
    assign(:errorlog, Errorlog.new(
      :identifier => "MyString",
      :rownumber => 1,
      :description => "MyText"
    ))
  end

  it "renders new errorlog form" do
    render

    assert_select "form[action=?][method=?]", errorlogs_path, "post" do

      assert_select "input[name=?]", "errorlog[identifier]"

      assert_select "input[name=?]", "errorlog[rownumber]"

      assert_select "textarea[name=?]", "errorlog[description]"
    end
  end
end
