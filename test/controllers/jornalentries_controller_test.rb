require "test_helper"

class JornalentriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jornalentry = jornalentries(:one)
  end

  test "should get index" do
    get jornalentries_url
    assert_response :success
  end

  test "should get new" do
    get new_jornalentry_url
    assert_response :success
  end

  test "should create jornalentry" do
    assert_difference("Jornalentry.count") do
      post jornalentries_url, params: { jornalentry: { date: @jornalentry.date, glucose_mg_dl: @jornalentry.glucose_mg_dl, list_of_food: @jornalentry.list_of_food, notes: @jornalentry.notes } }
    end

    assert_redirected_to jornalentry_url(Jornalentry.last)
  end

  test "should show jornalentry" do
    get jornalentry_url(@jornalentry)
    assert_response :success
  end

  test "should get edit" do
    get edit_jornalentry_url(@jornalentry)
    assert_response :success
  end

  test "should update jornalentry" do
    patch jornalentry_url(@jornalentry), params: { jornalentry: { date: @jornalentry.date, glucose_mg_dl: @jornalentry.glucose_mg_dl, list_of_food: @jornalentry.list_of_food, notes: @jornalentry.notes } }
    assert_redirected_to jornalentry_url(@jornalentry)
  end

  test "should destroy jornalentry" do
    assert_difference("Jornalentry.count", -1) do
      delete jornalentry_url(@jornalentry)
    end

    assert_redirected_to jornalentries_url
  end
end
