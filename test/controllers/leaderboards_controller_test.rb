require 'test_helper'

class LeaderboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaderboard = leaderboards(:one)
  end

  test "should get index" do
    get leaderboards_url, as: :json
    assert_response :success
  end

  test "should create leaderboard" do
    assert_difference('Leaderboard.count') do
      post leaderboards_url, params: { leaderboard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show leaderboard" do
    get leaderboard_url(@leaderboard), as: :json
    assert_response :success
  end

  test "should update leaderboard" do
    patch leaderboard_url(@leaderboard), params: { leaderboard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy leaderboard" do
    assert_difference('Leaderboard.count', -1) do
      delete leaderboard_url(@leaderboard), as: :json
    end

    assert_response 204
  end
end
