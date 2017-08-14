require 'test_helper'

class Administrator::AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrator_admin = administrator_admins(:one)
  end

  test "should get index" do
    get administrator_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_administrator_admin_url
    assert_response :success
  end

  test "should create administrator_admin" do
    assert_difference('Administrator::Admin.count') do
      post administrator_admins_url, params: { administrator_admin: {  } }
    end

    assert_redirected_to administrator_admin_url(Administrator::Admin.last)
  end

  test "should show administrator_admin" do
    get administrator_admin_url(@administrator_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrator_admin_url(@administrator_admin)
    assert_response :success
  end

  test "should update administrator_admin" do
    patch administrator_admin_url(@administrator_admin), params: { administrator_admin: {  } }
    assert_redirected_to administrator_admin_url(@administrator_admin)
  end

  test "should destroy administrator_admin" do
    assert_difference('Administrator::Admin.count', -1) do
      delete administrator_admin_url(@administrator_admin)
    end

    assert_redirected_to administrator_admins_url
  end
end
