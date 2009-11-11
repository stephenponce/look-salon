require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assigns["posts"]
    assigns["images"]
  end

  test "should get about" do
    get :about
    assert_response :success
  end
  test "should get philosophy" do
    get :philosophy
    assert_response :success
  end
  test "should get staff" do
    get :people
    assert_response :success
  end
  test "should get page unavailable" do 
    get :products
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
  test "should get promotions" do
    get :promotions
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    #checks the @images object is available in view
    assigns["images"]
    assert_response :success     
  end

  test "should get appointments" do 
    get :appointments
    assert_response :success
  end

end
