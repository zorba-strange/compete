require 'test_helper'

class CompetitionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competition_index_url
    assert_response :success
  end

end
