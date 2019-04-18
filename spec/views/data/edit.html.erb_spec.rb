require 'rails_helper'

RSpec.describe "data/edit", type: :view do
  before(:each) do
    @datum = assign(:datum, Datum.create!(
      :identifier => "MyString",
      :rownumber => 1,
      :phone => "MyString",
      :email => "MyString",
      :first => "MyString",
      :last => "MyString"
    ))
  end

  it "renders the edit datum form" do
    render

    assert_select "form[action=?][method=?]", datum_path(@datum), "post" do

      assert_select "input[name=?]", "datum[identifier]"

      assert_select "input[name=?]", "datum[rownumber]"

      assert_select "input[name=?]", "datum[phone]"

      assert_select "input[name=?]", "datum[email]"

      assert_select "input[name=?]", "datum[first]"

      assert_select "input[name=?]", "datum[last]"
    end
  end
end
