require 'test_helper'

class AdminControllerTest < ActionController::TestCase

  def setup
    @controller = AdminController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end

  test "should get admin panel" do
    get :panel
    assert_response :redirect
  end
end
