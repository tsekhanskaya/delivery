require 'rails_helper'

RSpec.describe 'brands/edit', type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
                              title: 'MyString',
                              bytitle: 'MyString',
                              description: 'MyString',
                              img: 'MyString',
                              link: 'MyString',
                              address: 'MyString'
                            ))
  end

  it 'renders the edit brand form' do
    render

    assert_select 'form[action=?][method=?]', brand_path(@brand), 'post' do
      assert_select 'input[name=?]', 'brand[title]'

      assert_select 'input[name=?]', 'brand[bytitle]'

      assert_select 'input[name=?]', 'brand[description]'

      assert_select 'input[name=?]', 'brand[img]'

      assert_select 'input[name=?]', 'brand[link]'

      assert_select 'input[name=?]', 'brand[address]'
    end
  end
end
