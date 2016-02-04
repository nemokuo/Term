require 'test_helper'

class TerminologysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
