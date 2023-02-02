require 'test_helper'

class OperationControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get InfoAlbumView" do
    get operation_controller_InfoAlbumView_url
    assert_response :success
  end

  test "should get InfoCompositionView" do
    get operation_controller_InfoCompositionView_url
    assert_response :success
  end

  test "should get InfoStorageView" do
    get operation_controller_InfoStorageView_url
    assert_response :success
  end

  test "should get InfoPersonView" do
    get operation_controller_InfoPersonView_url
    assert_response :success
  end

  test "should get InfoArtistView" do
    get operation_controller_InfoArtistView_url
    assert_response :success
  end

end
