require 'test_helper'

class Administrator::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrator_home_index_url
    assert_response :success
  end

end
