require 'test_helper'

class PostRelsControllerTest < ActionController::TestCase
  setup do
    @post_rel = post_rels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_rels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_rel" do
    assert_difference('PostRel.count') do
      post :create, post_rel: { pli_desc: @post_rel.pli_desc, pli_url: @post_rel.pli_url, post_id: @post_rel.post_id, pre_titulo: @post_rel.pre_titulo }
    end

    assert_redirected_to post_rel_path(assigns(:post_rel))
  end

  test "should show post_rel" do
    get :show, id: @post_rel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_rel
    assert_response :success
  end

  test "should update post_rel" do
    patch :update, id: @post_rel, post_rel: { pli_desc: @post_rel.pli_desc, pli_url: @post_rel.pli_url, post_id: @post_rel.post_id, pre_titulo: @post_rel.pre_titulo }
    assert_redirected_to post_rel_path(assigns(:post_rel))
  end

  test "should destroy post_rel" do
    assert_difference('PostRel.count', -1) do
      delete :destroy, id: @post_rel
    end

    assert_redirected_to post_rels_path
  end
end
