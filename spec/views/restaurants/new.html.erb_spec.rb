# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'restaurants/new', type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
                          title: 'MyString',
                          bytitle: 'MyString',
                          address: 'MyString'
                        ))
  end

  it 'renders new restaurant form' do
    render

    assert_select 'form[action=?][method=?]', restaurants_path, 'post' do
      assert_select 'input[name=?]', 'restaurant[title]'

      assert_select 'input[name=?]', 'restaurant[bytitle]'

      assert_select 'input[name=?]', 'restaurant[address]'
    end
  end
end
