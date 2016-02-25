require 'test_helper'

class ParliamentsControllerTest < ActionController::TestCase
  setup do
    @parliament = parliaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parliaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parliament" do
    assert_difference('Parliament.count') do
      post :create, parliament: { dapil: @parliament.dapil, fraksi: @parliament.fraksi, jabatan_badan_anggaran: @parliament.jabatan_badan_anggaran, jabatan_badan_kehormatan: @parliament.jabatan_badan_kehormatan, jabatan_badan_legislatif: @parliament.jabatan_badan_legislatif, jabatan_badan_musyawarah: @parliament.jabatan_badan_musyawarah, jabatan_fraksi: @parliament.jabatan_fraksi, jabatan_komisi: @parliament.jabatan_komisi, komisi: @parliament.komisi, name: @parliament.name }
    end

    assert_redirected_to parliament_path(assigns(:parliament))
  end

  test "should show parliament" do
    get :show, id: @parliament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parliament
    assert_response :success
  end

  test "should update parliament" do
    patch :update, id: @parliament, parliament: { dapil: @parliament.dapil, fraksi: @parliament.fraksi, jabatan_badan_anggaran: @parliament.jabatan_badan_anggaran, jabatan_badan_kehormatan: @parliament.jabatan_badan_kehormatan, jabatan_badan_legislatif: @parliament.jabatan_badan_legislatif, jabatan_badan_musyawarah: @parliament.jabatan_badan_musyawarah, jabatan_fraksi: @parliament.jabatan_fraksi, jabatan_komisi: @parliament.jabatan_komisi, komisi: @parliament.komisi, name: @parliament.name }
    assert_redirected_to parliament_path(assigns(:parliament))
  end

  test "should destroy parliament" do
    assert_difference('Parliament.count', -1) do
      delete :destroy, id: @parliament
    end

    assert_redirected_to parliaments_path
  end
end
