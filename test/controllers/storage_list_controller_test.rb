require 'test_helper'

class StorageListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get storage_list_new_url
    assert_response :success
  end

  test "should get create" do
    get storage_list_create_url
    assert_response :success
  end

end
