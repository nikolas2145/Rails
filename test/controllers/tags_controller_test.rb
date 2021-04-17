require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
    @tag = tags(:one)
  end

  test "should get index" do
    get :index, params: { task_id: @task }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { task_id: @task }
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, params: { task_id: @task, tag: @tag.attributes }
    end

    assert_redirected_to task_tag_path(@task, Tag.last)
  end

  test "should show tag" do
    get :show, params: { task_id: @task, id: @tag }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { task_id: @task, id: @tag }
    assert_response :success
  end

  test "should update tag" do
    put :update, params: { task_id: @task, id: @tag, tag: @tag.attributes }
    assert_redirected_to task_tag_path(@task, Tag.last)
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, params: { task_id: @task, id: @tag }
    end

    assert_redirected_to task_tags_path(@task)
  end
end
