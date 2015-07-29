require 'test_helper'

class ProfileOptionsControllerTest < ActionController::TestCase
  setup do
    @profile_option = profile_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_option" do
    assert_difference('ProfileOption.count') do
      post :create, profile_option: { option_id: @profile_option.option_id, poc_fecha: @profile_option.poc_fecha, profile_id: @profile_option.profile_id }
    end

    assert_redirected_to profile_option_path(assigns(:profile_option))
  end

  test "should show profile_option" do
    get :show, id: @profile_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_option
    assert_response :success
  end

  test "should update profile_option" do
    patch :update, id: @profile_option, profile_option: { option_id: @profile_option.option_id, poc_fecha: @profile_option.poc_fecha, profile_id: @profile_option.profile_id }
    assert_redirected_to profile_option_path(assigns(:profile_option))
  end

  test "should destroy profile_option" do
    assert_difference('ProfileOption.count', -1) do
      delete :destroy, id: @profile_option
    end

    assert_redirected_to profile_options_path
  end
end
