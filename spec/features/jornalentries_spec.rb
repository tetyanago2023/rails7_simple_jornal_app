require 'rails_helper'

describe "the jornalentries CRUD feature", type: :feature do
  # index page is accessible and jornalentries list is rendered
  it "visit index page" do
    jornalentry1 = create(:jornalentry)
    jornalentry2 = create(:jornalentry)
    Capybara.using_driver(:selenium_chrome_headless) do
      visit '/'
      page.save_and_open_screenshot(full: true)
      expect(page).to have_content "#{jornalentry1.list_of_food}"
      expect(page).to have_content "#{jornalentry2.list_of_food}"
    end
  end

  #new jornalentry can be created
    it "create new jornalentry" do
      Capybara.using_driver(:selenium_chrome_headless) do
        visit 'jornalentries/new'
        fill_in "Date", with: Date.yesterday
        fill_in "Tested at", with: Time.now
        fill_in "Glucose mg dl", with: 120
        fill_in "List of food", with: "bread, turkey, cheese, pecan, green tea"
        fill_in "Notes", with: "on empty stomach"
        click_on "Create Jornalentry"
        assert_text "Journalentry was successfully created"
        page.save_and_open_screenshot(full: true)
      end
    end

  # jornalentry can be updated
  it "updates existing jornalentry" do
    jornalentry = create(:jornalentry)
    Capybara.using_driver(:selenium_chrome_headless) do
      visit "jornalentries/#{jornalentry.id}"
      click_on "Edit this journalentry", match: :first
      fill_in "List of food", with: "On empty stomach"
      click_on "Update Jornalentry"
      assert_text "Journalentry was successfully updated"
      page.save_and_open_screenshot(full: true)
    end
  end

  # jornalentry can be deleted
  it "destroys existing jornalentry" do
    jornalentry = create(:jornalentry)
    Capybara.using_driver(:selenium_chrome_headless) do
      visit "jornalentries/#{jornalentry.id}"
      click_on "Delete this journalentry", match: :first
      assert_text "Journalentry was successfully destroyed"
      page.save_and_open_screenshot(full: true)
    end
  end
end
