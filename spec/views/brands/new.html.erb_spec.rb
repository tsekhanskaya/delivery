require 'rails_helper'

RSpec.describe 'brands/new', type: :view do
  before(:each) do
    assign(:brand, Brand.new(
                     title: 'MyString',
                     bytitle: 'MyString',
                     description: 'MyString',
                     img: 'MyString',
                     link: 'MyString',
                     address: 'MyString'
                   ))
  end

  it 'renders new brand form' do
    render

    assert_select 'form[action=?][method=?]', brands_path, 'post' do
      assert_select 'input[name=?]', 'brand[title]'

      assert_select 'input[name=?]', 'brand[bytitle]'

      assert_select 'input[name=?]', 'brand[description]'

      assert_select 'input[name=?]', 'brand[img]'

      assert_select 'input[name=?]', 'brand[link]'

      assert_select 'input[name=?]', 'brand[address]'
    end
  end
end
