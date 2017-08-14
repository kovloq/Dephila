require 'test_helper'

class Administrator::ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrator_contact = administrator_contacts(:one)
  end

  test "should get index" do
    get administrator_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_administrator_contact_url
    assert_response :success
  end

  test "should create administrator_contact" do
    assert_difference('Administrator::Contact.count') do
      post administrator_contacts_url, params: { administrator_contact: {  } }
    end

    assert_redirected_to administrator_contact_url(Administrator::Contact.last)
  end

  test "should show administrator_contact" do
    get administrator_contact_url(@administrator_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrator_contact_url(@administrator_contact)
    assert_response :success
  end

  test "should update administrator_contact" do
    patch administrator_contact_url(@administrator_contact), params: { administrator_contact: {  } }
    assert_redirected_to administrator_contact_url(@administrator_contact)
  end

  test "should destroy administrator_contact" do
    assert_difference('Administrator::Contact.count', -1) do
      delete administrator_contact_url(@administrator_contact)
    end

    assert_redirected_to administrator_contacts_url
  end
end
