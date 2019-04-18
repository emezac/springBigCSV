require 'rails_helper'

RSpec.describe "loguploads/index", type: :view do
  before(:each) do
    assign(:loguploads, [
      Logupload.create!(
        :identifier => "Identifier",
        :filename => "Filename",
        :filelocation => "Filelocation",
        :version => 2
      ),
      Logupload.create!(
        :identifier => "Identifier",
        :filename => "Filename",
        :filelocation => "Filelocation",
        :version => 2
      )
    ])
  end

  it "renders a list of loguploads" do
    render
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Filelocation".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
