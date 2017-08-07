require 'test_helper'

class WisataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wisata_index_url
    assert_response :success
  end

  test "should get show" do
    get wisata_show_url
    assert_response :success
  end

end
