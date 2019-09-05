require 'test_helper'

class BuyUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get buy_users" do
    get buy_users_buy_users_url
    assert_response :success
  end

end
