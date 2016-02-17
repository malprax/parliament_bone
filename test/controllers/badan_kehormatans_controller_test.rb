# == Schema Information
#
# Table name: badan_kehormatans
#
#  id                   :integer          not null, primary key
#  parliament_member_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class BadanKehormatansControllerTest < ActionController::TestCase
  setup do
    @badan_kehormatan = badan_kehormatans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badan_kehormatans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badan_kehormatan" do
    assert_difference('BadanKehormatan.count') do
      post :create, badan_kehormatan: { parliament_member_id: @badan_kehormatan.parliament_member_id }
    end

    assert_redirected_to badan_kehormatan_path(assigns(:badan_kehormatan))
  end

  test "should show badan_kehormatan" do
    get :show, id: @badan_kehormatan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badan_kehormatan
    assert_response :success
  end

  test "should update badan_kehormatan" do
    patch :update, id: @badan_kehormatan, badan_kehormatan: { parliament_member_id: @badan_kehormatan.parliament_member_id }
    assert_redirected_to badan_kehormatan_path(assigns(:badan_kehormatan))
  end

  test "should destroy badan_kehormatan" do
    assert_difference('BadanKehormatan.count', -1) do
      delete :destroy, id: @badan_kehormatan
    end

    assert_redirected_to badan_kehormatans_path
  end
end
