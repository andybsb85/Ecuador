require 'test_helper'

class TypeDestinationsControllerTest < ActionController::TestCase
  setup do
    @type_destination = type_destinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_destinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_destination" do
    assert_difference('TypeDestination.count') do
      post :create, type_destination: { name: @type_destination.name }
    end

    assert_redirected_to type_destination_path(assigns(:type_destination))
  end

  test "should show type_destination" do
    get :show, id: @type_destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_destination
    assert_response :success
  end

  test "should update type_destination" do
    patch :update, id: @type_destination, type_destination: { name: @type_destination.name }
    assert_redirected_to type_destination_path(assigns(:type_destination))
  end

  test "should destroy type_destination" do
    assert_difference('TypeDestination.count', -1) do
      delete :destroy, id: @type_destination
    end

    assert_redirected_to type_destinations_path
  end
end
