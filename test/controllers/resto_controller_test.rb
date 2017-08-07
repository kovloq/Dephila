require 'test_helper'

class RestoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resto_index_url
    assert_response :success
  end

  test "should get show" do
    get resto_show_url
    assert_response :success
  end

end
