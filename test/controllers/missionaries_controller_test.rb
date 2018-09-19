require 'test_helper'

class MissionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missionary = missionaries(:one)
  end

  test "should get index" do
    get missionaries_url
    assert_response :success
  end

  test "should get new" do
    get new_missionary_url
    assert_response :success
  end

  test "should create missionary" do
    assert_difference('Missionary.count') do
      post missionaries_url, params: { missionary: { campus: @missionary.campus, image_url: @missionary.image_url, name: @missionary.name } }
    end

    assert_redirected_to missionary_url(Missionary.last)
  end

  test "should show missionary" do
    get missionary_url(@missionary)
    assert_response :success
  end

  test "should get edit" do
    get edit_missionary_url(@missionary)
    assert_response :success
  end

  test "should update missionary" do
    patch missionary_url(@missionary), params: { missionary: { campus: @missionary.campus, image_url: @missionary.image_url, name: @missionary.name } }
    assert_redirected_to missionary_url(@missionary)
  end

  test "should destroy missionary" do
    assert_difference('Missionary.count', -1) do
      delete missionary_url(@missionary)
    end

    assert_redirected_to missionaries_url
  end
end
