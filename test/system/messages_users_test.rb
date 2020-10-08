require "application_system_test_case"

class MessagesUsersTest < ApplicationSystemTestCase
  setup do
    @messages_user = messages_users(:one)
  end

  test "visiting the index" do
    visit messages_users_url
    assert_selector "h1", text: "Messages Users"
  end

  test "creating a Messages user" do
    visit messages_users_url
    click_on "New Messages User"

    click_on "Create Messages user"

    assert_text "Messages user was successfully created"
    click_on "Back"
  end

  test "updating a Messages user" do
    visit messages_users_url
    click_on "Edit", match: :first

    click_on "Update Messages user"

    assert_text "Messages user was successfully updated"
    click_on "Back"
  end

  test "destroying a Messages user" do
    visit messages_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Messages user was successfully destroyed"
  end
end
