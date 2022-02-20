require "test_helper"

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get applications_top_url
    assert_response :success
  end

  test "should get menu" do
    get applications_menu_url
    assert_response :success
  end

  test "should get place" do
    get applications_place_url
    assert_response :success
  end

  test "should get edit" do
    get applications_edit_url
    assert_response :success
  end
end
