require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get manage" do
    get users_manage_url
    assert_response :success
  end

end
