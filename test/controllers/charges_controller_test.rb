require 'test_helper'

class ChargesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charges_path
    assert_response :success
  end

end
