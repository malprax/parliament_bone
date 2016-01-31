require 'test_helper'

class OrganizeFractionsControllerTest < ActionController::TestCase
  setup do
    @organize_fraction = organize_fractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organize_fractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organize_fraction" do
    assert_difference('OrganizeFraction.count') do
      post :create, organize_fraction: { name: @organize_fraction.name }
    end

    assert_redirected_to organize_fraction_path(assigns(:organize_fraction))
  end

  test "should show organize_fraction" do
    get :show, id: @organize_fraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organize_fraction
    assert_response :success
  end

  test "should update organize_fraction" do
    patch :update, id: @organize_fraction, organize_fraction: { name: @organize_fraction.name }
    assert_redirected_to organize_fraction_path(assigns(:organize_fraction))
  end

  test "should destroy organize_fraction" do
    assert_difference('OrganizeFraction.count', -1) do
      delete :destroy, id: @organize_fraction
    end

    assert_redirected_to organize_fractions_path
  end
end
