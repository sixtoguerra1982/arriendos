require 'test_helper'

class ArriendosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get arriendos_create_url
    assert_response :success
  end

end
