require 'test_helper'

class MusicStorageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get music_storage_new_url
    assert_response :success
  end

  test "should get create" do
    get music_storage_create_url
    assert_response :success
  end

end
