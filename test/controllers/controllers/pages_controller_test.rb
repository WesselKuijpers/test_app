require 'test_helper'

class Controllers::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home," do
    get controllers_pages_Home,_url
    assert_response :success
  end

  test "should get About" do
    get controllers_pages_About_url
    assert_response :success
  end

end
