class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def register
    @order = current_user.order || current_user.create_order
  end

  def upload
    @content = current_user.order.content || current_user.order.create_content
  end

  def status
    @user = current_user
    @order = current_user.order || current_user.create_order
    @product = @order.product || @order.create_product
    @content = @order.content || @order.create_content
  end

end
