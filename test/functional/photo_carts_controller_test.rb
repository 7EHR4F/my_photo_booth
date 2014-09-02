require 'test_helper'

class PhotoCartsControllerTest < ActionController::TestCase
  setup do
    @photo_cart = photo_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_cart" do
    assert_difference('PhotoCart.count') do
      post :create, photo_cart: { cart_id: @photo_cart.cart_id, photo_id: @photo_cart.photo_id, user_id: @photo_cart.user_id }
    end

    assert_redirected_to photo_cart_path(assigns(:photo_cart))
  end

  test "should show photo_cart" do
    get :show, id: @photo_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_cart
    assert_response :success
  end

  test "should update photo_cart" do
    put :update, id: @photo_cart, photo_cart: { cart_id: @photo_cart.cart_id, photo_id: @photo_cart.photo_id, user_id: @photo_cart.user_id }
    assert_redirected_to photo_cart_path(assigns(:photo_cart))
  end

  test "should destroy photo_cart" do
    assert_difference('PhotoCart.count', -1) do
      delete :destroy, id: @photo_cart
    end

    assert_redirected_to photo_carts_path
  end
end
