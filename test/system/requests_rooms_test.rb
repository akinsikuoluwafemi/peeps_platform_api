require "application_system_test_case"

class RequestsRoomsTest < ApplicationSystemTestCase
  setup do
    @requests_room = requests_rooms(:one)
  end

  test "visiting the index" do
    visit requests_rooms_url
    assert_selector "h1", text: "Requests Rooms"
  end

  test "creating a Requests room" do
    visit requests_rooms_url
    click_on "New Requests Room"

    click_on "Create Requests room"

    assert_text "Requests room was successfully created"
    click_on "Back"
  end

  test "updating a Requests room" do
    visit requests_rooms_url
    click_on "Edit", match: :first

    click_on "Update Requests room"

    assert_text "Requests room was successfully updated"
    click_on "Back"
  end

  test "destroying a Requests room" do
    visit requests_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requests room was successfully destroyed"
  end
end
