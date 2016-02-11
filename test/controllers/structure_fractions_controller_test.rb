require 'test_helper'

class StructureFractionsControllerTest < ActionController::TestCase
  setup do
    @structure_fraction = structure_fractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:structure_fractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create structure_fraction" do
    assert_difference('StructureFraction.count') do
      post :create, structure_fraction: {  }
    end

    assert_redirected_to structure_fraction_path(assigns(:structure_fraction))
  end

  test "should show structure_fraction" do
    get :show, id: @structure_fraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @structure_fraction
    assert_response :success
  end

  test "should update structure_fraction" do
    patch :update, id: @structure_fraction, structure_fraction: {  }
    assert_redirected_to structure_fraction_path(assigns(:structure_fraction))
  end

  test "should destroy structure_fraction" do
    assert_difference('StructureFraction.count', -1) do
      delete :destroy, id: @structure_fraction
    end

    assert_redirected_to structure_fractions_path
  end
end
