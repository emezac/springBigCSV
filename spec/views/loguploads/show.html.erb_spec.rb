require 'rails_helper'

RSpec.describe "loguploads/show", type: :view do
  before(:each) do
    @logupload = assign(:logupload, Logupload.create!(
      :identifier => "Identifier",
      :filename => "Filename",
      :filelocation => "Filelocation",
      :version => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/Filename/)
    expect(rendered).to match(/Filelocation/)
    expect(rendered).to match(/2/)
  end
end
