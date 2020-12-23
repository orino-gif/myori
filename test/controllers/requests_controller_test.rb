require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get requests_top_url
    assert_response :success
  end

end
