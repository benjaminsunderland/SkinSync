require 'test_helper'

class ParloursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parlour = parlours(:one)
  end

  test "should get index" do
    get parlours_url
    assert_response :success
  end

  test "should get new" do
    get new_parlour_url
    assert_response :success
  end

  test "should create parlour" do
    assert_difference('Parlour.count') do
      post parlours_url, params: { parlour: { contact: @parlour.contact, description: @parlour.description, location: @parlour.location, name: @parlour.name } }
    end

    assert_redirected_to parlour_url(Parlour.last)
  end

  test "should show parlour" do
    get parlour_url(@parlour)
    assert_response :success
  end

  test "should get edit" do
    get edit_parlour_url(@parlour)
    assert_response :success
  end

  test "should update parlour" do
    patch parlour_url(@parlour), params: { parlour: { contact: @parlour.contact, description: @parlour.description, location: @parlour.location, name: @parlour.name } }
    assert_redirected_to parlour_url(@parlour)
  end

  test "should destroy parlour" do
    assert_difference('Parlour.count', -1) do
      delete parlour_url(@parlour)
    end

    assert_redirected_to parlours_url
  end
end
