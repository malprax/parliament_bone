require 'test_helper'

class FractionsControllerTest < ActionController::TestCase
  setup do
    @fraction = fractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fraction" do
    assert_difference('Fraction.count') do
      post :create, fraction: { name: @fraction.name }
    end

    assert_redirected_to fraction_path(assigns(:fraction))
  end

  test "should show fraction" do
    get :show, id: @fraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fraction
    assert_response :success
  end

  test "should update fraction" do
    patch :update, id: @fraction, fraction: { name: @fraction.name }
    assert_redirected_to fraction_path(assigns(:fraction))
  end

  test "should destroy fraction" do
    assert_difference('Fraction.count', -1) do
      delete :destroy, id: @fraction
    end

    assert_redirected_to fractions_path
  end
end
