require 'test_helper'

class PostLinksControllerTest < ActionController::TestCase
  setup do
    @post_link = post_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_link" do
    assert_difference('PostLink.count') do
      post :create, post_link: { pli_desc: @post_link.pli_desc, pli_titulo: @post_link.pli_titulo, pli_url: @post_link.pli_url, post_id: @post_link.post_id }
    end

    assert_redirected_to post_link_path(assigns(:post_link))
  end

  test "should show post_link" do
    get :show, id: @post_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_link
    assert_response :success
  end

  test "should update post_link" do
    patch :update, id: @post_link, post_link: { pli_desc: @post_link.pli_desc, pli_titulo: @post_link.pli_titulo, pli_url: @post_link.pli_url, post_id: @post_link.post_id }
    assert_redirected_to post_link_path(assigns(:post_link))
  end

  test "should destroy post_link" do
    assert_difference('PostLink.count', -1) do
      delete :destroy, id: @post_link
    end

    assert_redirected_to post_links_path
  end
end
