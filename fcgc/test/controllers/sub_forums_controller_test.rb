require 'test_helper'

class SubForumsControllerTest < ActionController::TestCase
  setup do
    @sub_forum = sub_forums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_forums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_forum" do
    assert_difference('SubForum.count') do
      post :create, sub_forum: { category_id: @sub_forum.category_id, description: @sub_forum.description, name: @sub_forum.name }
    end

    assert_redirected_to sub_forum_path(assigns(:sub_forum))
  end

  test "should show sub_forum" do
    get :show, id: @sub_forum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_forum
    assert_response :success
  end

  test "should update sub_forum" do
    patch :update, id: @sub_forum, sub_forum: { category_id: @sub_forum.category_id, description: @sub_forum.description, name: @sub_forum.name }
    assert_redirected_to sub_forum_path(assigns(:sub_forum))
  end

  test "should destroy sub_forum" do
    assert_difference('SubForum.count', -1) do
      delete :destroy, id: @sub_forum
    end

    assert_redirected_to sub_forums_path
  end
end
