require 'test_helper'

class LeeControllerTest < ActionDispatch::IntegrationTest
  test "should get hook" do
    get lee_hook_url
    assert_response :success
  end

end
