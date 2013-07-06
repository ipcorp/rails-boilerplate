require 'test_helper'

class WidgetControllerTest < ActionController::TestCase
  test "should get hurry_up_jose" do
    get :hurry_up_jose
    assert_response :success
  end

end
