require "test_helper"

class HighlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get highlights_index_url
    assert_response :success
  end
end
