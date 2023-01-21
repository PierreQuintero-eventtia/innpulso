require 'rails_helper'

RSpec.describe "templates/edit", type: :view do
  let(:template) {
    Template.create!(
      name: "MyString",
      author: "MyString"
    )
  }

  before(:each) do
    assign(:template, template)
  end

  it "renders the edit template form" do
    render

    assert_select "form[action=?][method=?]", template_path(template), "post" do

      assert_select "input[name=?]", "template[name]"

      assert_select "input[name=?]", "template[author]"
    end
  end
end
