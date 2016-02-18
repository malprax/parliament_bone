require 'test_helper'

class BadanLegislatifsControllerTest < ActionController::TestCase
  setup do
    @badan_legislatif = badan_legislatifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badan_legislatifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badan_legislatif" do
    assert_difference('BadanLegislatif.count') do
      post :create, badan_legislatif: { level: @badan_legislatif.level }
    end

    assert_redirected_to badan_legislatif_path(assigns(:badan_legislatif))
  end

  test "should show badan_legislatif" do
    get :show, id: @badan_legislatif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badan_legislatif
    assert_response :success
  end

  test "should update badan_legislatif" do
    patch :update, id: @badan_legislatif, badan_legislatif: { level: @badan_legislatif.level }
    assert_redirected_to badan_legislatif_path(assigns(:badan_legislatif))
  end

  test "should destroy badan_legislatif" do
    assert_difference('BadanLegislatif.count', -1) do
      delete :destroy, id: @badan_legislatif
    end

    assert_redirected_to badan_legislatifs_path
  end
end
