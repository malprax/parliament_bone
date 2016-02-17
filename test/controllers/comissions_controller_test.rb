# == Schema Information
#
# Table name: comissions
#
#  id                   :integer          not null, primary key
#  code                 :string
#  parliament_member_id :integer
#  comment              :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class ComissionsControllerTest < ActionController::TestCase
  setup do
    @comission = comissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comission" do
    assert_difference('Comission.count') do
      post :create, comission: { code: @comission.code, comment: @comission.comment, fraction_id: @comission.fraction_id, name: @comission.name }
    end

    assert_redirected_to comission_path(assigns(:comission))
  end

  test "should show comission" do
    get :show, id: @comission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comission
    assert_response :success
  end

  test "should update comission" do
    patch :update, id: @comission, comission: { code: @comission.code, comment: @comission.comment, fraction_id: @comission.fraction_id, name: @comission.name }
    assert_redirected_to comission_path(assigns(:comission))
  end

  test "should destroy comission" do
    assert_difference('Comission.count', -1) do
      delete :destroy, id: @comission
    end

    assert_redirected_to comissions_path
  end
end
