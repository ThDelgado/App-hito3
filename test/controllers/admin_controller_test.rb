require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get items" do
    get admin_items_url
    assert_response :success
  end

  test "should get comments" do
    get admin_comments_url
    assert_response :success
  end

  test "should get users" do
    get admin_users_url
    assert_response :success
  end

  test "should get show_items" do
    get admin_show_items_url
    assert_response :success
  end
end
