require 'test_helper'

class LossesControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get losses_view_url
    assert_response :success
  end

  test "should get show" do
    get losses_show_url
    assert_response :success
  end

end
