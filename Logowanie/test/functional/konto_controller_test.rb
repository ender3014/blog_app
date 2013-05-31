require 'test_helper'

class KontoControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get nowe" do
    get :nowe
    assert_response :success
  end

  test "should get usun" do
    get :usun
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
