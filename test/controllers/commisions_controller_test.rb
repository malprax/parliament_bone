require 'test_helper'

class CommisionsControllerTest < ActionController::TestCase
  setup do
    @commision = commisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commision" do
    assert_difference('Commision.count') do
      post :create, commision: { name: @commision.name, position: @commision.position }
    end

    assert_redirected_to commision_path(assigns(:commision))
  end

  test "should show commision" do
    get :show, id: @commision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commision
    assert_response :success
  end

  test "should update commision" do
    patch :update, id: @commision, commision: { name: @commision.name, position: @commision.position }
    assert_redirected_to commision_path(assigns(:commision))
  end

  test "should destroy commision" do
    assert_difference('Commision.count', -1) do
      delete :destroy, id: @commision
    end

    assert_redirected_to commisions_path
  end
end
