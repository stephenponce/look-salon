require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  test "should get about" do
    get :about
    assert_response :success
  end
  test "should get contact" do
    get :contact
    assert_response :success
  end
  test "should get services" do
    get :services
    assert_response :success
    assert_not_nil assigns(:services)
  end

end
