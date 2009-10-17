require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  #posts are now handled by active_scaffold

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_new
    get :new
    assert_response :success
    assert_template 'create_form'
  end

  test "should get promo page" do
    get :promos
    assert_response :success

  end

  test "should get announcement page" do
    get :announcements
    assert_response :success
  end 
end
