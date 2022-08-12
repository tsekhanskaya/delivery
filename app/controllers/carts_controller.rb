# frozen_string_literal: true

# CartsController used to store Product LineItems before proceeding to new Order checkout
class CartsController < ApplicationController
  def show
    @cart = @current_cart
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end
