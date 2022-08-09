# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'brands/index', type: :view do
  before(:each) do
    assign(:brands, [
             Brand.create!(
               title: 'Title',
               bytitle: 'Bytitle',
               description: 'Description',
               img: 'Img',
               link: 'Link',
               address: 'Address'
             ),
             Brand.create!(
               title: 'Title',
               bytitle: 'Bytitle',
               description: 'Description',
               img: 'Img',
               link: 'Link',
               address: 'Address'
             )
           ])
  end

  it 'renders a list of brands' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Bytitle'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
    assert_select 'tr>td', text: 'Img'.to_s, count: 2
    assert_select 'tr>td', text: 'Link'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
  end
end
