require 'test_helper'

class PostParrafoBulletsControllerTest < ActionController::TestCase
  setup do
    @post_parrafo_bullet = post_parrafo_bullets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_parrafo_bullets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_parrafo_bullet" do
    assert_difference('PostParrafoBullet.count') do
      post :create, post_parrafo_bullet: { post_parrafo_id: @post_parrafo_bullet.post_parrafo_id, ppb_texto: @post_parrafo_bullet.ppb_texto, ppb_titulo: @post_parrafo_bullet.ppb_titulo }
    end

    assert_redirected_to post_parrafo_bullet_path(assigns(:post_parrafo_bullet))
  end

  test "should show post_parrafo_bullet" do
    get :show, id: @post_parrafo_bullet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_parrafo_bullet
    assert_response :success
  end

  test "should update post_parrafo_bullet" do
    patch :update, id: @post_parrafo_bullet, post_parrafo_bullet: { post_parrafo_id: @post_parrafo_bullet.post_parrafo_id, ppb_texto: @post_parrafo_bullet.ppb_texto, ppb_titulo: @post_parrafo_bullet.ppb_titulo }
    assert_redirected_to post_parrafo_bullet_path(assigns(:post_parrafo_bullet))
  end

  test "should destroy post_parrafo_bullet" do
    assert_difference('PostParrafoBullet.count', -1) do
      delete :destroy, id: @post_parrafo_bullet
    end

    assert_redirected_to post_parrafo_bullets_path
  end
end
