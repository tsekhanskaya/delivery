require 'rails_helper'

RSpec.describe "brands/show", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      title: "Title",
      bytitle: "Bytitle",
      description: "Description",
      img: "Img",
      link: "Link",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Bytitle/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Address/)
  end
end
