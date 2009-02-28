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

end
