require 'rails_helper'

RSpec.describe "errorlogs/show", type: :view do
  before(:each) do
    @errorlog = assign(:errorlog, Errorlog.create!(
      :identifier => "Identifier",
      :rownumber => 2,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
