# == Schema Information
#
# Table name: badan_musyawarahs
#
#  id         :integer          not null, primary key
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BadanMusyawarahsControllerTest < ActionController::TestCase
  setup do
    @badan_musyawarah = badan_musyawarahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badan_musyawarahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badan_musyawarah" do
    assert_difference('BadanMusyawarah.count') do
      post :create, badan_musyawarah: { level: @badan_musyawarah.level }
    end

    assert_redirected_to badan_musyawarah_path(assigns(:badan_musyawarah))
  end

  test "should show badan_musyawarah" do
    get :show, id: @badan_musyawarah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badan_musyawarah
    assert_response :success
  end

  test "should update badan_musyawarah" do
    patch :update, id: @badan_musyawarah, badan_musyawarah: { level: @badan_musyawarah.level }
    assert_redirected_to badan_musyawarah_path(assigns(:badan_musyawarah))
  end

  test "should destroy badan_musyawarah" do
    assert_difference('BadanMusyawarah.count', -1) do
      delete :destroy, id: @badan_musyawarah
    end

    assert_redirected_to badan_musyawarahs_path
  end
end
