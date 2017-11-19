require 'test_helper'

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component = components(:one)
  end

  test "should get index" do
    get components_url
    assert_response :success
  end

  test "should get new" do
    get new_component_url
    assert_response :success
  end

  test "should create component" do
    assert_difference('Component.count') do
      post components_url, params: { component: { height_in: @component.height_in, image_url: @component.image_url, manufacturer_id: @component.manufacturer_id, name: @component.name, purchase_url: @component.purchase_url, width_in: @component.width_in } }
    end

    assert_redirected_to component_url(Component.last)
  end

  test "should show component" do
    get component_url(@component)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_url(@component)
    assert_response :success
  end

  test "should update component" do
    patch component_url(@component), params: { component: { height_in: @component.height_in, image_url: @component.image_url, manufacturer_id: @component.manufacturer_id, name: @component.name, purchase_url: @component.purchase_url, width_in: @component.width_in } }
    assert_redirected_to component_url(@component)
  end

  test "should destroy component" do
    assert_difference('Component.count', -1) do
      delete component_url(@component)
    end

    assert_redirected_to components_url
  end
end
