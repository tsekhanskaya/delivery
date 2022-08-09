# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'restaurants/edit', type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
                                        title: 'MyString',
                                        bytitle: 'MyString',
                                        address: 'MyString'
                                      ))
  end

  it 'renders the edit restaurant form' do
    render

    assert_select 'form[action=?][method=?]', restaurant_path(@restaurant), 'post' do
      assert_select 'input[name=?]', 'restaurant[title]'

      assert_select 'input[name=?]', 'restaurant[bytitle]'

      assert_select 'input[name=?]', 'restaurant[address]'
    end
  end
end
