require "test_helper"

class PhoneListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_list = phone_lists(:one)
  end

  test "should get index" do
    get phone_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_list_url
    assert_response :success
  end

  test "should create phone_list" do
    assert_difference("PhoneList.count") do
      post phone_lists_url, params: { phone_list: { name: @phone_list.name, phone_number: @phone_list.phone_number } }
    end

    assert_redirected_to phone_list_url(PhoneList.last)
  end

  test "should show phone_list" do
    get phone_list_url(@phone_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_list_url(@phone_list)
    assert_response :success
  end

  test "should update phone_list" do
    patch phone_list_url(@phone_list), params: { phone_list: { name: @phone_list.name, phone_number: @phone_list.phone_number } }
    assert_redirected_to phone_list_url(@phone_list)
  end

  test "should destroy phone_list" do
    assert_difference("PhoneList.count", -1) do
      delete phone_list_url(@phone_list)
    end

    assert_redirected_to phone_lists_url
  end
end
