require 'test_helper'

class BuycommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get buycomments_create_url
    assert_response :success
  end

end
