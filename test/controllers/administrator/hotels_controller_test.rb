require 'test_helper'

class Administrator::HotelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrator_hotel = administrator_hotels(:one)
  end

  test "should get index" do
    get administrator_hotels_url
    assert_response :success
  end

  test "should get new" do
    get new_administrator_hotel_url
    assert_response :success
  end

  test "should create administrator_hotel" do
    assert_difference('Administrator::Hotel.count') do
      post administrator_hotels_url, params: { administrator_hotel: {  } }
    end

    assert_redirected_to administrator_hotel_url(Administrator::Hotel.last)
  end

  test "should show administrator_hotel" do
    get administrator_hotel_url(@administrator_hotel)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrator_hotel_url(@administrator_hotel)
    assert_response :success
  end

  test "should update administrator_hotel" do
    patch administrator_hotel_url(@administrator_hotel), params: { administrator_hotel: {  } }
    assert_redirected_to administrator_hotel_url(@administrator_hotel)
  end

  test "should destroy administrator_hotel" do
    assert_difference('Administrator::Hotel.count', -1) do
      delete administrator_hotel_url(@administrator_hotel)
    end

    assert_redirected_to administrator_hotels_url
  end
end
