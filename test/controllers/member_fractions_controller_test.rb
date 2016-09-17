require 'test_helper'

class MemberFractionsControllerTest < ActionController::TestCase
  setup do
    @member_fraction = member_fractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_fractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_fraction" do
    assert_difference('MemberFraction.count') do
      post :create, member_fraction: { fraction_id: @member_fraction.fraction_id, parliament_id: @member_fraction.parliament_id, structural_id: @member_fraction.structural_id }
    end

    assert_redirected_to member_fraction_path(assigns(:member_fraction))
  end

  test "should show member_fraction" do
    get :show, id: @member_fraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_fraction
    assert_response :success
  end

  test "should update member_fraction" do
    patch :update, id: @member_fraction, member_fraction: { fraction_id: @member_fraction.fraction_id, parliament_id: @member_fraction.parliament_id, structural_id: @member_fraction.structural_id }
    assert_redirected_to member_fraction_path(assigns(:member_fraction))
  end

  test "should destroy member_fraction" do
    assert_difference('MemberFraction.count', -1) do
      delete :destroy, id: @member_fraction
    end

    assert_redirected_to member_fractions_path
  end
end
