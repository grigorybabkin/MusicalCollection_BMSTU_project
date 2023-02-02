require 'test_helper'

class CompositionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get composition_new_url
    assert_response :success
  end

  test "should get create" do
    get composition_create_url
    assert_response :success
  end

end
