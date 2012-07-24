require 'test_helper'

class SocialWorkersControllerTest < ActionController::TestCase
  setup do
    @social_worker = social_workers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_workers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_worker" do
    assert_difference('SocialWorker.count') do
      post :create, social_worker: { email: @social_worker.email, name: @social_worker.name, title: @social_worker.title }
    end

    assert_redirected_to social_worker_path(assigns(:social_worker))
  end

  test "should show social_worker" do
    get :show, id: @social_worker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_worker
    assert_response :success
  end

  test "should update social_worker" do
    put :update, id: @social_worker, social_worker: { email: @social_worker.email, name: @social_worker.name, title: @social_worker.title }
    assert_redirected_to social_worker_path(assigns(:social_worker))
  end

  test "should destroy social_worker" do
    assert_difference('SocialWorker.count', -1) do
      delete :destroy, id: @social_worker
    end

    assert_redirected_to social_workers_path
  end
end
