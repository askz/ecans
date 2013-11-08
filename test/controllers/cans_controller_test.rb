require 'test_helper'

class CansControllerTest < ActionController::TestCase
  setup do
    @can = cans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create can" do
    assert_difference('Can.count') do
      post :create, can: { name: @can.name, price: @can.price, qua: @can.qua }
    end

    assert_redirected_to can_path(assigns(:can))
  end

  test "should show can" do
    get :show, id: @can
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @can
    assert_response :success
  end

  test "should update can" do
    patch :update, id: @can, can: { name: @can.name, price: @can.price, qua: @can.qua }
    assert_redirected_to can_path(assigns(:can))
  end

  test "should destroy can" do
    assert_difference('Can.count', -1) do
      delete :destroy, id: @can
    end

    assert_redirected_to cans_path
  end
end
