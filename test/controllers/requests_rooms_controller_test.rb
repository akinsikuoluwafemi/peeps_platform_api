require 'test_helper'

class RequestsRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requests_room = requests_rooms(:one)
  end

  test "should get index" do
    get requests_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_requests_room_url
    assert_response :success
  end

  test "should create requests_room" do
    assert_difference('RequestsRoom.count') do
      post requests_rooms_url, params: { requests_room: {  } }
    end

    assert_redirected_to requests_room_url(RequestsRoom.last)
  end

  test "should show requests_room" do
    get requests_room_url(@requests_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_requests_room_url(@requests_room)
    assert_response :success
  end

  test "should update requests_room" do
    patch requests_room_url(@requests_room), params: { requests_room: {  } }
    assert_redirected_to requests_room_url(@requests_room)
  end

  test "should destroy requests_room" do
    assert_difference('RequestsRoom.count', -1) do
      delete requests_room_url(@requests_room)
    end

    assert_redirected_to requests_rooms_url
  end
end
