require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quien" do
    get :quien
    assert_response :success
  end

  test "should get prod" do
    get :prod
    assert_response :success
  end

  test "should get costo" do
    get :costo
    assert_response :success
  end

  test "should get venta" do
    get :venta
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
