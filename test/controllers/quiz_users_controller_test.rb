require 'test_helper'

class QuizUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_user = quiz_users(:one)
  end

  test "should get index" do
    get quiz_users_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_user_url
    assert_response :success
  end

  test "should create quiz_user" do
    assert_difference('QuizUser.count') do
      post quiz_users_url, params: { quiz_user: { answers: @quiz_user.answers, quiz_id: @quiz_user.quiz_id, user_id: @quiz_user.user_id } }
    end

    assert_redirected_to quiz_user_url(QuizUser.last)
  end

  test "should show quiz_user" do
    get quiz_user_url(@quiz_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_user_url(@quiz_user)
    assert_response :success
  end

  test "should update quiz_user" do
    patch quiz_user_url(@quiz_user), params: { quiz_user: { answers: @quiz_user.answers, quiz_id: @quiz_user.quiz_id, user_id: @quiz_user.user_id } }
    assert_redirected_to quiz_user_url(@quiz_user)
  end

  test "should destroy quiz_user" do
    assert_difference('QuizUser.count', -1) do
      delete quiz_user_url(@quiz_user)
    end

    assert_redirected_to quiz_users_url
  end
end
