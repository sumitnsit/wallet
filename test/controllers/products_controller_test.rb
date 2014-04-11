require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { amount: @product.amount, category_id: @product.category_id, name: @product.name, payee_id: @product.payee_id, quantity: @product.quantity, rate: @product.rate, shopping_id: @product.shopping_id, unit_id: @product.unit_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { amount: @product.amount, category_id: @product.category_id, name: @product.name, payee_id: @product.payee_id, quantity: @product.quantity, rate: @product.rate, shopping_id: @product.shopping_id, unit_id: @product.unit_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
