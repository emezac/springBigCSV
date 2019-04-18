require 'rails_helper'

RSpec.describe "loguploads/new", type: :view do
  before(:each) do
    assign(:logupload, Logupload.new(
      :identifier => "MyString",
      :filename => "MyString",
      :filelocation => "MyString",
      :version => 1
    ))
  end

  it "renders new logupload form" do
    render

    assert_select "form[action=?][method=?]", loguploads_path, "post" do

      assert_select "input[name=?]", "logupload[identifier]"

      assert_select "input[name=?]", "logupload[filename]"

      assert_select "input[name=?]", "logupload[filelocation]"

      assert_select "input[name=?]", "logupload[version]"
    end
  end
end
