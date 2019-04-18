require 'rails_helper'

RSpec.describe "errorlogs/edit", type: :view do
  before(:each) do
    @errorlog = assign(:errorlog, Errorlog.create!(
      :identifier => "MyString",
      :rownumber => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit errorlog form" do
    render

    assert_select "form[action=?][method=?]", errorlog_path(@errorlog), "post" do

      assert_select "input[name=?]", "errorlog[identifier]"

      assert_select "input[name=?]", "errorlog[rownumber]"

      assert_select "textarea[name=?]", "errorlog[description]"
    end
  end
end
