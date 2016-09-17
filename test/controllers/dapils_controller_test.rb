require 'test_helper'

class DapilsControllerTest < ActionController::TestCase
  setup do
    @dapil = dapils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dapils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dapil" do
    assert_difference('Dapil.count') do
      post :create, dapil: { name: @dapil.name }
    end

    assert_redirected_to dapil_path(assigns(:dapil))
  end

  test "should show dapil" do
    get :show, id: @dapil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dapil
    assert_response :success
  end

  test "should update dapil" do
    patch :update, id: @dapil, dapil: { name: @dapil.name }
    assert_redirected_to dapil_path(assigns(:dapil))
  end

  test "should destroy dapil" do
    assert_difference('Dapil.count', -1) do
      delete :destroy, id: @dapil
    end

    assert_redirected_to dapils_path
  end
end
