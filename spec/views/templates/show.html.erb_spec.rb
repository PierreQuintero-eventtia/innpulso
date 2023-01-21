require 'rails_helper'

RSpec.describe "templates/show", type: :view do
  before(:each) do
    assign(:template, Template.create!(
      name: "Name",
      author: "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Author/)
  end
end
