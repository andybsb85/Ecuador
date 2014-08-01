require 'test_helper'

class ListEventControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
