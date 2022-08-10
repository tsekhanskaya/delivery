require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        restaurant_id: 2,
        product_id: 3,
        count: 4,
        status: "Status",
        soft_delete: false
      ),
      Order.create!(
        restaurant_id: 2,
        product_id: 3,
        count: 4,
        status: "Status",
        soft_delete: false
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
