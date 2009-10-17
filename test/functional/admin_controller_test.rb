require 'test_helper'
require 'account_controller'

class AdminControllerTest < ActionController::TestCase
  fixtures :users

  def setup
    @controller = AdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  
  end

  test "should login to panel and get gallery page" do
     login_as :quentin
     get :gallery
     assert_response :success
  end

  test "should redirect from admin panel to login" do
    get :panel
    assert_redirected_to :controller=>'account', :action=>'login'
  end

  test "should redirect from services to login" do
    get :services
    assert_redirected_to :controller=>'account', :action=>'login'
  end

  test "should redirect from service types to login" do
    get :service_types
    assert_redirected_to :controller=>'account', :action=>'login'
  end

  test "should redirect from announcements to login" do
    get :posts
    assert_redirected_to :controller=>'account', :action=>'login'
  end
  
  test "should redirect from stylists to login" do
    get :stylists
    assert_redirected_to :controller=>'account', :action=>'login'
  end

#routing tests
  test "should route posts" do
    assert_routing 'admin/posts',  {:controller=>'posts', :action=>'index'}
  end
  test "should route services" do
    assert_routing 'admin/services', {:controller=>'services', :action=>'index'}
  end
  test "should route service_types to tags" do
    assert_routing 'admin/service_types', {:controller=>'tags', :action=>'index'}
  end
end
