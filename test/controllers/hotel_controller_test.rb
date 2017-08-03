require 'test_helper'

class HotelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotel_index_url
    assert_response :success
  end

  test "should get show" do
    get hotel_show_url
    assert_response :success
  end

end
