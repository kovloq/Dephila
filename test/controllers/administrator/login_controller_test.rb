require 'test_helper'

class Administrator::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrator_login_index_url
    assert_response :success
  end

  test "should get login" do
    get administrator_login_login_url
    assert_response :success
  end

end
