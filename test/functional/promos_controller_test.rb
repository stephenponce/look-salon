require 'test_helper'

class PromosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promos" do
    assert_difference('Promos.count') do
      post :create, :promos => { }
    end

    assert_redirected_to promos_path(assigns(:promos))
  end

  test "should show promos" do
    get :show, :id => promos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => promos(:one).id
    assert_response :success
  end

  test "should update promos" do
    put :update, :id => promos(:one).id, :promos => { }
    assert_redirected_to promos_path(assigns(:promos))
  end

  test "should destroy promos" do
    assert_difference('Promos.count', -1) do
      delete :destroy, :id => promos(:one).id
    end

    assert_redirected_to promos_path
  end
end
