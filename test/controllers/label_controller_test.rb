require 'test_helper'

class LabelControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get label_new_url
    assert_response :success
  end

  test "should get create" do
    get label_create_url
    assert_response :success
  end

end
