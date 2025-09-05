require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get home_help_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get home_about_url
    assert_response :success
    assert_select "title", "About|Ruby on Rails Tutorial Sample App"
  end
end
