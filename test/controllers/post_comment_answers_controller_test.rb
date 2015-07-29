require 'test_helper'

class PostCommentAnswersControllerTest < ActionController::TestCase
  setup do
    @post_comment_answer = post_comment_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_comment_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_comment_answer" do
    assert_difference('PostCommentAnswer.count') do
      post :create, post_comment_answer: { contact_id: @post_comment_answer.contact_id, pca_texto: @post_comment_answer.pca_texto, pca_titulo: @post_comment_answer.pca_titulo, post_comment_id: @post_comment_answer.post_comment_id }
    end

    assert_redirected_to post_comment_answer_path(assigns(:post_comment_answer))
  end

  test "should show post_comment_answer" do
    get :show, id: @post_comment_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_comment_answer
    assert_response :success
  end

  test "should update post_comment_answer" do
    patch :update, id: @post_comment_answer, post_comment_answer: { contact_id: @post_comment_answer.contact_id, pca_texto: @post_comment_answer.pca_texto, pca_titulo: @post_comment_answer.pca_titulo, post_comment_id: @post_comment_answer.post_comment_id }
    assert_redirected_to post_comment_answer_path(assigns(:post_comment_answer))
  end

  test "should destroy post_comment_answer" do
    assert_difference('PostCommentAnswer.count', -1) do
      delete :destroy, id: @post_comment_answer
    end

    assert_redirected_to post_comment_answers_path
  end
end
