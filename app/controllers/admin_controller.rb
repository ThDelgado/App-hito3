class AdminController < ApplicationController
  def index
  end

  def items
    @items = Product.all.includes(:users, :orders)
  end

  def comments
  end

  def users
  end

  def show_items
    @items = Produc.includes(:users, :orders).find(params[:id])
  end
end
