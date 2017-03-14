require 'test_helper'

class NsmAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nsm_asset = nsm_assets(:one)
  end

  test "should get index" do
    get nsm_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_nsm_asset_url
    assert_response :success
  end

  test "should create nsm_asset" do
    assert_difference('NsmAsset.count') do
      post nsm_assets_url, params: { nsm_asset: { code: @nsm_asset.code, nsm_asset_id_id: @nsm_asset.nsm_asset_id_id } }
    end

    assert_redirected_to nsm_asset_url(NsmAsset.last)
  end

  test "should show nsm_asset" do
    get nsm_asset_url(@nsm_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_nsm_asset_url(@nsm_asset)
    assert_response :success
  end

  test "should update nsm_asset" do
    patch nsm_asset_url(@nsm_asset), params: { nsm_asset: { code: @nsm_asset.code, nsm_asset_id_id: @nsm_asset.nsm_asset_id_id } }
    assert_redirected_to nsm_asset_url(@nsm_asset)
  end

  test "should destroy nsm_asset" do
    assert_difference('NsmAsset.count', -1) do
      delete nsm_asset_url(@nsm_asset)
    end

    assert_redirected_to nsm_assets_url
  end
end
