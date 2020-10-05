require "application_system_test_case"

class RequestsUsersTest < ApplicationSystemTestCase
  setup do
    @requests_user = requests_users(:one)
  end

  test "visiting the index" do
    visit requests_users_url
    assert_selector "h1", text: "Requests Users"
  end

  test "creating a Requests user" do
    visit requests_users_url
    click_on "New Requests User"

    click_on "Create Requests user"

    assert_text "Requests user was successfully created"
    click_on "Back"
  end

  test "updating a Requests user" do
    visit requests_users_url
    click_on "Edit", match: :first

    click_on "Update Requests user"

    assert_text "Requests user was successfully updated"
    click_on "Back"
  end

  test "destroying a Requests user" do
    visit requests_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requests user was successfully destroyed"
  end
end
