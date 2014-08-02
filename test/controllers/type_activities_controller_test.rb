require 'test_helper'

class TypeActivitiesControllerTest < ActionController::TestCase
  setup do
    @type_activity = type_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_activity" do
    assert_difference('TypeActivity.count') do
      post :create, type_activity: { name: @type_activity.name }
    end

    assert_redirected_to type_activity_path(assigns(:type_activity))
  end

  test "should show type_activity" do
    get :show, id: @type_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_activity
    assert_response :success
  end

  test "should update type_activity" do
    patch :update, id: @type_activity, type_activity: { name: @type_activity.name }
    assert_redirected_to type_activity_path(assigns(:type_activity))
  end

  test "should destroy type_activity" do
    assert_difference('TypeActivity.count', -1) do
      delete :destroy, id: @type_activity
    end

    assert_redirected_to type_activities_path
  end
end
