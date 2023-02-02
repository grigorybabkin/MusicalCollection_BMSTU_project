require 'test_helper'

class ArtistListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artist_list_new_url
    assert_response :success
  end

  test "should get create" do
    get artist_list_create_url
    assert_response :success
  end

end
