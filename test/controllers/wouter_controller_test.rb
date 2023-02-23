require "test_helper"

class WouterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wouter_index_url
    assert_response :success
  end
end
