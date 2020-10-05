require 'test_helper'

class RequestsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requests_user = requests_users(:one)
  end

  test "should get index" do
    get requests_users_url
    assert_response :success
  end

  test "should get new" do
    get new_requests_user_url
    assert_response :success
  end

  test "should create requests_user" do
    assert_difference('RequestsUser.count') do
      post requests_users_url, params: { requests_user: {  } }
    end

    assert_redirected_to requests_user_url(RequestsUser.last)
  end

  test "should show requests_user" do
    get requests_user_url(@requests_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_requests_user_url(@requests_user)
    assert_response :success
  end

  test "should update requests_user" do
    patch requests_user_url(@requests_user), params: { requests_user: {  } }
    assert_redirected_to requests_user_url(@requests_user)
  end

  test "should destroy requests_user" do
    assert_difference('RequestsUser.count', -1) do
      delete requests_user_url(@requests_user)
    end

    assert_redirected_to requests_users_url
  end
end
