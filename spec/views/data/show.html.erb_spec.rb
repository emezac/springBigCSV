require 'rails_helper'

RSpec.describe "data/show", type: :view do
  before(:each) do
    @datum = assign(:datum, Datum.create!(
      :identifier => "Identifier",
      :rownumber => 2,
      :phone => "Phone",
      :email => "Email",
      :first => "First",
      :last => "Last"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/First/)
    expect(rendered).to match(/Last/)
  end
end
