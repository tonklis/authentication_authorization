require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { facebook_id: @user.facebook_id, first_name: @user.first_name, friend_count: @user.friend_count, last_name: @user.last_name, referred_user_id: @user.referred_user_id, ticket_id: @user.ticket_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { facebook_id: @user.facebook_id, first_name: @user.first_name, friend_count: @user.friend_count, last_name: @user.last_name, referred_user_id: @user.referred_user_id, ticket_id: @user.ticket_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
