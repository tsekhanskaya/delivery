# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'restaurants/index', type: :view do
  before(:each) do
    assign(:restaurants, [
             Restaurant.create!(
               title: 'Title',
               bytitle: 'Bytitle',
               address: 'Address'
             ),
             Restaurant.create!(
               title: 'Title',
               bytitle: 'Bytitle',
               address: 'Address'
             )
           ])
  end

  it 'renders a list of restaurants' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Bytitle'.to_s, count: 2
    assert_select 'tr>td', text: 'Address'.to_s, count: 2
  end
end
