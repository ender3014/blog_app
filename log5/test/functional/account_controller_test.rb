require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get start" do
    get :start
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

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get strona" do
    get :strona
    assert_response :success
  end

end
