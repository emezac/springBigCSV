require 'rails_helper'

RSpec.describe "loguploads/edit", type: :view do
  before(:each) do
    @logupload = assign(:logupload, Logupload.create!(
      :identifier => "MyString",
      :filename => "MyString",
      :filelocation => "MyString",
      :version => 1
    ))
  end

  it "renders the edit logupload form" do
    render

    assert_select "form[action=?][method=?]", logupload_path(@logupload), "post" do

      assert_select "input[name=?]", "logupload[identifier]"

      assert_select "input[name=?]", "logupload[filename]"

      assert_select "input[name=?]", "logupload[filelocation]"

      assert_select "input[name=?]", "logupload[version]"
    end
  end
end
