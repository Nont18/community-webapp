require "application_system_test_case"

class PhoneListsTest < ApplicationSystemTestCase
  setup do
    @phone_list = phone_lists(:one)
  end

  test "visiting the index" do
    visit phone_lists_url
    assert_selector "h1", text: "Phone lists"
  end

  test "should create phone list" do
    visit phone_lists_url
    click_on "New phone list"

    fill_in "Name", with: @phone_list.name
    fill_in "Phone number", with: @phone_list.phone_number
    click_on "Create Phone list"

    assert_text "Phone list was successfully created"
    click_on "Back"
  end

  test "should update Phone list" do
    visit phone_list_url(@phone_list)
    click_on "Edit this phone list", match: :first

    fill_in "Name", with: @phone_list.name
    fill_in "Phone number", with: @phone_list.phone_number
    click_on "Update Phone list"

    assert_text "Phone list was successfully updated"
    click_on "Back"
  end

  test "should destroy Phone list" do
    visit phone_list_url(@phone_list)
    click_on "Destroy this phone list", match: :first

    assert_text "Phone list was successfully destroyed"
  end
end
