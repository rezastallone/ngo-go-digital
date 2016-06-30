require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { city: @order.city, name: @order.name, phone: @order.phone, province: @order.province, requirement_file_path: @order.requirement_file_path, school_address: @order.school_address, school_domain_name: @order.school_domain_name, school_name: @order.school_name, school_phone: @order.school_phone }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { city: @order.city, name: @order.name, phone: @order.phone, province: @order.province, requirement_file_path: @order.requirement_file_path, school_address: @order.school_address, school_domain_name: @order.school_domain_name, school_name: @order.school_name, school_phone: @order.school_phone }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
