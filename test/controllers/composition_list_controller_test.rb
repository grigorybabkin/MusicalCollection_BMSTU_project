require 'test_helper'

class CompositionListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get composition_list_new_url
    assert_response :success
  end

  test "should get create" do
    get composition_list_create_url
    assert_response :success
  end

end
