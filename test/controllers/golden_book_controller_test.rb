require 'test_helper'

class GoldenBookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golden_book_index_url
    assert_response :success
  end

end
