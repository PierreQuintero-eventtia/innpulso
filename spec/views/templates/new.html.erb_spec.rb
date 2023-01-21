require 'rails_helper'

RSpec.describe "templates/new", type: :view do
  before(:each) do
    assign(:template, Template.new(
      name: "MyString",
      author: "MyString"
    ))
  end

  it "renders new template form" do
    render

    assert_select "form[action=?][method=?]", templates_path, "post" do

      assert_select "input[name=?]", "template[name]"

      assert_select "input[name=?]", "template[author]"
    end
  end
end
