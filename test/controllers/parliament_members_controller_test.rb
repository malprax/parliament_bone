require 'test_helper'

class ParliamentMembersControllerTest < ActionController::TestCase
  setup do
    @parliament_member = parliament_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parliament_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parliament_member" do
    assert_difference('ParliamentMember.count') do
      post :create, parliament_member: { name: @parliament_member.name }
    end

    assert_redirected_to parliament_member_path(assigns(:parliament_member))
  end

  test "should show parliament_member" do
    get :show, id: @parliament_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parliament_member
    assert_response :success
  end

  test "should update parliament_member" do
    patch :update, id: @parliament_member, parliament_member: { name: @parliament_member.name }
    assert_redirected_to parliament_member_path(assigns(:parliament_member))
  end

  test "should destroy parliament_member" do
    assert_difference('ParliamentMember.count', -1) do
      delete :destroy, id: @parliament_member
    end

    assert_redirected_to parliament_members_path
  end
end
