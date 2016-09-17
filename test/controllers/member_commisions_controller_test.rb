require 'test_helper'

class MemberCommisionsControllerTest < ActionController::TestCase
  setup do
    @member_commision = member_commisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_commisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_commision" do
    assert_difference('MemberCommision.count') do
      post :create, member_commision: { commision_id: @member_commision.commision_id, parliament_id: @member_commision.parliament_id, structural_id: @member_commision.structural_id }
    end

    assert_redirected_to member_commision_path(assigns(:member_commision))
  end

  test "should show member_commision" do
    get :show, id: @member_commision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_commision
    assert_response :success
  end

  test "should update member_commision" do
    patch :update, id: @member_commision, member_commision: { commision_id: @member_commision.commision_id, parliament_id: @member_commision.parliament_id, structural_id: @member_commision.structural_id }
    assert_redirected_to member_commision_path(assigns(:member_commision))
  end

  test "should destroy member_commision" do
    assert_difference('MemberCommision.count', -1) do
      delete :destroy, id: @member_commision
    end

    assert_redirected_to member_commisions_path
  end
end
