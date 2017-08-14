require 'test_helper'

class Administrator::NewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrator_news = administrator_news(:one)
  end

  test "should get index" do
    get administrator_news_index_url
    assert_response :success
  end

  test "should get new" do
    get new_administrator_news_url
    assert_response :success
  end

  test "should create administrator_news" do
    assert_difference('Administrator::News.count') do
      post administrator_news_index_url, params: { administrator_news: {  } }
    end

    assert_redirected_to administrator_news_url(Administrator::News.last)
  end

  test "should show administrator_news" do
    get administrator_news_url(@administrator_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrator_news_url(@administrator_news)
    assert_response :success
  end

  test "should update administrator_news" do
    patch administrator_news_url(@administrator_news), params: { administrator_news: {  } }
    assert_redirected_to administrator_news_url(@administrator_news)
  end

  test "should destroy administrator_news" do
    assert_difference('Administrator::News.count', -1) do
      delete administrator_news_url(@administrator_news)
    end

    assert_redirected_to administrator_news_index_url
  end
end
