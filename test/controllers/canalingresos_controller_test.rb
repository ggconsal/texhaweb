require 'test_helper'

class CanalingresosControllerTest < ActionController::TestCase
  setup do
    @canalingreso = canalingresos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canalingresos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canalingreso" do
    assert_difference('Canalingreso.count') do
      post :create, canalingreso: { cin_desc: @canalingreso.cin_desc, cin_titulo: @canalingreso.cin_titulo }
    end

    assert_redirected_to canalingreso_path(assigns(:canalingreso))
  end

  test "should show canalingreso" do
    get :show, id: @canalingreso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canalingreso
    assert_response :success
  end

  test "should update canalingreso" do
    patch :update, id: @canalingreso, canalingreso: { cin_desc: @canalingreso.cin_desc, cin_titulo: @canalingreso.cin_titulo }
    assert_redirected_to canalingreso_path(assigns(:canalingreso))
  end

  test "should destroy canalingreso" do
    assert_difference('Canalingreso.count', -1) do
      delete :destroy, id: @canalingreso
    end

    assert_redirected_to canalingresos_path
  end
end
