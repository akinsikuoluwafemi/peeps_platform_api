require 'test_helper'

class MessagesUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messages_user = messages_users(:one)
  end

  test "should get index" do
    get messages_users_url
    assert_response :success
  end

  test "should get new" do
    get new_messages_user_url
    assert_response :success
  end

  test "should create messages_user" do
    assert_difference('MessagesUser.count') do
      post messages_users_url, params: { messages_user: {  } }
    end

    assert_redirected_to messages_user_url(MessagesUser.last)
  end

  test "should show messages_user" do
    get messages_user_url(@messages_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_messages_user_url(@messages_user)
    assert_response :success
  end

  test "should update messages_user" do
    patch messages_user_url(@messages_user), params: { messages_user: {  } }
    assert_redirected_to messages_user_url(@messages_user)
  end

  test "should destroy messages_user" do
    assert_difference('MessagesUser.count', -1) do
      delete messages_user_url(@messages_user)
    end

    assert_redirected_to messages_users_url
  end
end
