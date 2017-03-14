require 'test_helper'

class NsmAssetTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nsm_asset_type = nsm_asset_types(:one)
  end

  test "should get index" do
    get nsm_asset_types_url
    assert_response :success
  end

  test "should get new" do
    get new_nsm_asset_type_url
    assert_response :success
  end

  test "should create nsm_asset_type" do
    assert_difference('NsmAssetType.count') do
      post nsm_asset_types_url, params: { nsm_asset_type: { description: @nsm_asset_type.description, name: @nsm_asset_type.name } }
    end

    assert_redirected_to nsm_asset_type_url(NsmAssetType.last)
  end

  test "should show nsm_asset_type" do
    get nsm_asset_type_url(@nsm_asset_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_nsm_asset_type_url(@nsm_asset_type)
    assert_response :success
  end

  test "should update nsm_asset_type" do
    patch nsm_asset_type_url(@nsm_asset_type), params: { nsm_asset_type: { description: @nsm_asset_type.description, name: @nsm_asset_type.name } }
    assert_redirected_to nsm_asset_type_url(@nsm_asset_type)
  end

  test "should destroy nsm_asset_type" do
    assert_difference('NsmAssetType.count', -1) do
      delete nsm_asset_type_url(@nsm_asset_type)
    end

    assert_redirected_to nsm_asset_types_url
  end
end
