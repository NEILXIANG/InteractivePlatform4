require 'test_helper'

class ShoppingTasksControllerTest < ActionController::TestCase
  setup do
    @shopping_task = shopping_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_task" do
    assert_difference('ShoppingTask.count') do
      post :create, shopping_task: { price: @shopping_task.price, remind: @shopping_task.remind, score: @shopping_task.score, deploy_type: @shopping_task.deploy_type, url: @shopping_task.url }
    end

    assert_redirected_to shopping_task_path(assigns(:shopping_task))
  end

  test "should show shopping_task" do
    get :show, id: @shopping_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_task
    assert_response :success
  end

  test "should update shopping_task" do
    patch :update, id: @shopping_task, shopping_task: { price: @shopping_task.price, remind: @shopping_task.remind, score: @shopping_task.score, deploy_type: @shopping_task.deploy_type, url: @shopping_task.url }
    assert_redirected_to shopping_task_path(assigns(:shopping_task))
  end

  test "should destroy shopping_task" do
    assert_difference('ShoppingTask.count', -1) do
      delete :destroy, id: @shopping_task
    end

    assert_redirected_to shopping_tasks_path
  end
end
