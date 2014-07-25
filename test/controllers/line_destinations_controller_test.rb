require 'test_helper'

class LineDestinationsControllerTest < ActionController::TestCase
  setup do
    @line_destination = line_destinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_destinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_destination" do
    assert_difference('LineDestination.count') do
      post :create, line_destination: { destination_id: @line_destination.destination_id, plan_id: @line_destination.plan_id }
    end

    assert_redirected_to line_destination_path(assigns(:line_destination))
  end

  test "should show line_destination" do
    get :show, id: @line_destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_destination
    assert_response :success
  end

  test "should update line_destination" do
    patch :update, id: @line_destination, line_destination: { destination_id: @line_destination.destination_id, plan_id: @line_destination.plan_id }
    assert_redirected_to line_destination_path(assigns(:line_destination))
  end

  test "should destroy line_destination" do
    assert_difference('LineDestination.count', -1) do
      delete :destroy, id: @line_destination
    end

    assert_redirected_to line_destinations_path
  end
end
