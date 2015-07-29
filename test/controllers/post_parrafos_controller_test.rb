require 'test_helper'

class PostParrafosControllerTest < ActionController::TestCase
  setup do
    @post_parrafo = post_parrafos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_parrafos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_parrafo" do
    assert_difference('PostParrafo.count') do
      post :create, post_parrafo: { par_imagen_tmp: @post_parrafo.par_imagen_tmp, par_texto: @post_parrafo.par_texto, par_titulo: @post_parrafo.par_titulo, post_id: @post_parrafo.post_id }
    end

    assert_redirected_to post_parrafo_path(assigns(:post_parrafo))
  end

  test "should show post_parrafo" do
    get :show, id: @post_parrafo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_parrafo
    assert_response :success
  end

  test "should update post_parrafo" do
    patch :update, id: @post_parrafo, post_parrafo: { par_imagen_tmp: @post_parrafo.par_imagen_tmp, par_texto: @post_parrafo.par_texto, par_titulo: @post_parrafo.par_titulo, post_id: @post_parrafo.post_id }
    assert_redirected_to post_parrafo_path(assigns(:post_parrafo))
  end

  test "should destroy post_parrafo" do
    assert_difference('PostParrafo.count', -1) do
      delete :destroy, id: @post_parrafo
    end

    assert_redirected_to post_parrafos_path
  end
end
