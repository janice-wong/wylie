require 'test_helper'

class Api::V1::DrugsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_drugs_index_url
    assert_response :success
  end

end
