require 'test_helper'

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artist_new_url
    assert_response :success
  end

  test "should get create" do
    get artist_create_url
    assert_response :success
  end

end
