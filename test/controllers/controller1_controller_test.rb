require 'test_helper'

class Controller1ControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get controller1_test_url
    assert_response :success
  end

end
