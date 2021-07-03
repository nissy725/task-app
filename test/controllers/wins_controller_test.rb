require 'test_helper'

class WinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wins_index_url
    assert_response :success
  end

  test "should get show" do
    get wins_show_url
    assert_response :success
  end

end
