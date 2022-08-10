require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      restaurant_id: 2,
      product_id: 3,
      count: 4,
      status: "Status",
      soft_delete: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/false/)
  end
end
