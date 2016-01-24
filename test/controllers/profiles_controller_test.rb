require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get profil" do
    get :profil
    assert_response :success
  end

  test "should get sejarah" do
    get :sejarah
    assert_response :success
  end

  test "should get visi_misi" do
    get :visi_misi
    assert_response :success
  end

  test "should get hak_kewajiban" do
    get :hak_kewajiban
    assert_response :success
  end

  test "should get tugas_wewenang" do
    get :tugas_wewenang
    assert_response :success
  end

end
