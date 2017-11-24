require 'test_helper'

class GlobalMsrpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @global_msrp = global_msrps(:one)
  end

  test "should get index" do
    get global_msrps_url
    assert_response :success
  end

  test "should get new" do
    get new_global_msrp_url
    assert_response :success
  end

  test "should create global_msrp" do
    assert_difference('GlobalMsrp.count') do
      post global_msrps_url, params: { global_msrp: { price: @global_msrp.price } }
    end

    assert_redirected_to global_msrp_url(GlobalMsrp.last)
  end

  test "should show global_msrp" do
    get global_msrp_url(@global_msrp)
    assert_response :success
  end

  test "should get edit" do
    get edit_global_msrp_url(@global_msrp)
    assert_response :success
  end

  test "should update global_msrp" do
    patch global_msrp_url(@global_msrp), params: { global_msrp: { price: @global_msrp.price } }
    assert_redirected_to global_msrp_url(@global_msrp)
  end

  test "should destroy global_msrp" do
    assert_difference('GlobalMsrp.count', -1) do
      delete global_msrp_url(@global_msrp)
    end

    assert_redirected_to global_msrps_url
  end
end
