require 'test_helper'

class ShoppingsControllerTest < ActionController::TestCase
  setup do
    @shopping = shoppings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping" do
    assert_difference('Shopping.count') do
      post :create, shopping: { account_id: @shopping.account_id, amount: @shopping.amount, bill_number: @shopping.bill_number, date: @shopping.date }
    end

    assert_redirected_to shopping_path(assigns(:shopping))
  end

  test "should show shopping" do
    get :show, id: @shopping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping
    assert_response :success
  end

  test "should update shopping" do
    patch :update, id: @shopping, shopping: { account_id: @shopping.account_id, amount: @shopping.amount, bill_number: @shopping.bill_number, date: @shopping.date }
    assert_redirected_to shopping_path(assigns(:shopping))
  end

  test "should destroy shopping" do
    assert_difference('Shopping.count', -1) do
      delete :destroy, id: @shopping
    end

    assert_redirected_to shoppings_path
  end
end
