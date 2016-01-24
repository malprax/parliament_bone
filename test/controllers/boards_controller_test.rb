require 'test_helper'

class BoardsControllerTest < ActionController::TestCase
  test "should get alat_dan_kelengkapan" do
    get :alat_dan_kelengkapan
    assert_response :success
  end

  test "should get panitia_khusus" do
    get :panitia_khusus
    assert_response :success
  end

  test "should get badan_kehormatan" do
    get :badan_kehormatan
    assert_response :success
  end

  test "should get badan_legislasi" do
    get :badan_legislasi
    assert_response :success
  end

  test "should get badan_anggaran" do
    get :badan_anggaran
    assert_response :success
  end

  test "should get badan_musyawarah" do
    get :badan_musyawarah
    assert_response :success
  end

end
