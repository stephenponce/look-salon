require 'test_helper'

class StylistsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stylists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stylist" do
    assert_difference('Stylist.count') do
      post :create, :stylist => { }
    end
   
    assert_response :redirect
  end


  test "should show stylist" do
    get :show, :id => stylists(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => stylists(:one).id
    assert_response :success
  end

  test "should update stylist" do
    put :update, :id => stylists(:one).id, :stylist => { }
    assert_redirected_to stylist_path(assigns(:stylist))
  end

  test "should destroy stylist" do
    assert_difference('Stylist.count', -1) do
      delete :destroy, :id => stylists(:one).id
    end

    assert_redirected_to stylists_path
  end
end
