require "test_helper"

class FoodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_index_url
    assert_response :success
  end

  test "should get show" do
    get food_show_url
    assert_response :success
  end

  test "should get new" do
    get food_new_url
    assert_response :success
  end

  test "should get create" do
    get food_create_url
    assert_response :success
  end

  test "should get edit" do
    get food_edit_url
    assert_response :success
  end

  test "should get update" do
    get food_update_url
    assert_response :success
  end

  test "should get destroy" do
    get food_destroy_url
    assert_response :success
  end
end
