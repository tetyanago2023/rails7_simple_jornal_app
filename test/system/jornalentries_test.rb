require "application_system_test_case"

class JornalentriesTest < ApplicationSystemTestCase
  setup do
    @jornalentry = jornalentries(:one)
  end

  test "visiting the index" do
    visit jornalentries_url
    assert_selector "h1", text: "Jornalentries"
  end

  test "should create jornalentry" do
    visit jornalentries_url
    click_on "New jornalentry"

    fill_in "Date", with: @jornalentry.date
    fill_in "Glucose mg dl", with: @jornalentry.glucose_mg_dl
    fill_in "List of food", with: @jornalentry.list_of_food
    fill_in "Notes", with: @jornalentry.notes
    click_on "Create Jornalentry"

    assert_text "Jornalentry was successfully created"
    click_on "Back"
  end

  test "should update Jornalentry" do
    visit jornalentry_url(@jornalentry)
    click_on "Edit this jornalentry", match: :first

    fill_in "Date", with: @jornalentry.date
    fill_in "Glucose mg dl", with: @jornalentry.glucose_mg_dl
    fill_in "List of food", with: @jornalentry.list_of_food
    fill_in "Notes", with: @jornalentry.notes
    click_on "Update Jornalentry"

    assert_text "Jornalentry was successfully updated"
    click_on "Back"
  end

  test "should destroy Jornalentry" do
    visit jornalentry_url(@jornalentry)
    click_on "Delete this jornalentry", match: :first

    assert_text "Jornalentry was successfully destroyed"
  end
end
