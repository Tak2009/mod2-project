require "application_system_test_case"

class QuizUsersTest < ApplicationSystemTestCase
  setup do
    @quiz_user = quiz_users(:one)
  end

  test "visiting the index" do
    visit quiz_users_url
    assert_selector "h1", text: "Quiz Users"
  end

  test "creating a Quiz user" do
    visit quiz_users_url
    click_on "New Quiz User"

    check "Answers" if @quiz_user.answers
    fill_in "Quiz", with: @quiz_user.quiz_id
    fill_in "User", with: @quiz_user.user_id
    click_on "Create Quiz user"

    assert_text "Quiz user was successfully created"
    click_on "Back"
  end

  test "updating a Quiz user" do
    visit quiz_users_url
    click_on "Edit", match: :first

    check "Answers" if @quiz_user.answers
    fill_in "Quiz", with: @quiz_user.quiz_id
    fill_in "User", with: @quiz_user.user_id
    click_on "Update Quiz user"

    assert_text "Quiz user was successfully updated"
    click_on "Back"
  end

  test "destroying a Quiz user" do
    visit quiz_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz user was successfully destroyed"
  end
end
