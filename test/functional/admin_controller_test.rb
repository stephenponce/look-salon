require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "should get admin panel" do
    get :panel
    assert_response :success
  end
end
