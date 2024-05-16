require "test_helper"

class PuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puzzle = puzzles(:one)
  end

  test "should get index" do
    get puzzles_url, as: :json
    assert_response :success
  end

  test "should create puzzle" do
    assert_difference("Puzzle.count") do
      post puzzles_url, params: { puzzle: { piece_count: @puzzle.piece_count, title: @puzzle.title } }, as: :json
    end

    assert_response :created
  end

  test "should show puzzle" do
    get puzzle_url(@puzzle), as: :json
    assert_response :success
  end

  test "should update puzzle" do
    patch puzzle_url(@puzzle), params: { puzzle: { piece_count: @puzzle.piece_count, title: @puzzle.title } }, as: :json
    assert_response :success
  end

  test "should destroy puzzle" do
    assert_difference("Puzzle.count", -1) do
      delete puzzle_url(@puzzle), as: :json
    end

    assert_response :no_content
  end
end
