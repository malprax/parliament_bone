require 'test_helper'

class StructuralsControllerTest < ActionController::TestCase
  setup do
    @structural = structurals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:structurals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create structural" do
    assert_difference('Structural.count') do
      post :create, structural: { name: @structural.name }
    end

    assert_redirected_to structural_path(assigns(:structural))
  end

  test "should show structural" do
    get :show, id: @structural
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @structural
    assert_response :success
  end

  test "should update structural" do
    patch :update, id: @structural, structural: { name: @structural.name }
    assert_redirected_to structural_path(assigns(:structural))
  end

  test "should destroy structural" do
    assert_difference('Structural.count', -1) do
      delete :destroy, id: @structural
    end

    assert_redirected_to structurals_path
  end
end
