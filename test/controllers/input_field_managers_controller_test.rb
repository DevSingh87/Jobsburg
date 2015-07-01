require 'test_helper'

class InputFieldManagersControllerTest < ActionController::TestCase
  setup do
    @input_field_manager = input_field_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:input_field_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create input_field_manager" do
    assert_difference('InputFieldManager.count') do
      post :create, input_field_manager: { description: @input_field_manager.description, name: @input_field_manager.name }
    end

    assert_redirected_to input_field_manager_path(assigns(:input_field_manager))
  end

  test "should show input_field_manager" do
    get :show, id: @input_field_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @input_field_manager
    assert_response :success
  end

  test "should update input_field_manager" do
    patch :update, id: @input_field_manager, input_field_manager: { description: @input_field_manager.description, name: @input_field_manager.name }
    assert_redirected_to input_field_manager_path(assigns(:input_field_manager))
  end

  test "should destroy input_field_manager" do
    assert_difference('InputFieldManager.count', -1) do
      delete :destroy, id: @input_field_manager
    end

    assert_redirected_to input_field_managers_path
  end
end
