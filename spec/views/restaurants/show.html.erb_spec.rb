# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'restaurants/show', type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
                                        title: 'Title',
                                        bytitle: 'Bytitle',
                                        address: 'Address'
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Bytitle/)
    expect(rendered).to match(/Address/)
  end
end
