require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get album_new_url
    assert_response :success
  end

  test "should get create" do
    get album_create_url
    assert_response :success
  end

end
