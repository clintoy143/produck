require 'test_helper'

class BlanksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get blanks_home_url
    assert_response :success
  end

end
