# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'orders/edit', type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
                              restaurant_id: 1,
                              product_id: 1,
                              count: 1,
                              status: 'MyString',
                              soft_delete: false
                            ))
  end

  it 'renders the edit order form' do
    render

    assert_select 'form[action=?][method=?]', order_path(@order), 'post' do
      assert_select 'input[name=?]', 'order[restaurant_id]'

      assert_select 'input[name=?]', 'order[product_id]'

      assert_select 'input[name=?]', 'order[count]'

      assert_select 'input[name=?]', 'order[status]'

      assert_select 'input[name=?]', 'order[soft_delete]'
    end
  end
end
