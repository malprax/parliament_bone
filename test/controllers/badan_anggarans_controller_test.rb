require 'test_helper'

class BadanAnggaransControllerTest < ActionController::TestCase
  setup do
    @badan_anggaran = badan_anggarans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badan_anggarans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badan_anggaran" do
    assert_difference('BadanAnggaran.count') do
      post :create, badan_anggaran: { level: @badan_anggaran.level }
    end

    assert_redirected_to badan_anggaran_path(assigns(:badan_anggaran))
  end

  test "should show badan_anggaran" do
    get :show, id: @badan_anggaran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badan_anggaran
    assert_response :success
  end

  test "should update badan_anggaran" do
    patch :update, id: @badan_anggaran, badan_anggaran: { level: @badan_anggaran.level }
    assert_redirected_to badan_anggaran_path(assigns(:badan_anggaran))
  end

  test "should destroy badan_anggaran" do
    assert_difference('BadanAnggaran.count', -1) do
      delete :destroy, id: @badan_anggaran
    end

    assert_redirected_to badan_anggarans_path
  end
end
