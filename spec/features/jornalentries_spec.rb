require 'rails_helper'

describe "the jornalentries CRUD feature", type: :feature do
  before :each do
    # Jornalentries creation in test DB
    @jornalentry1 = Jornalentry.create(date: Date.today,
                                       list_of_food: "Some food_1",
                                       glucose_mg_dl: 101,
                                       notes: "Some note_1")
    @jornalentry2 = Jornalentry.create(date: Date.yesterday,
                                       list_of_food: "Some food_2",
                                       glucose_mg_dl: 102,
                                       notes: "Some note_2")
  end
  # index page is accessible and jornalentries list is rendered
  it "visit index page" do
    Capybara.using_driver(:selenium_chrome_headless) do
      visit '/'
      page.save_and_open_screenshot(full: true)
      expect(page).to have_content 'Some food_1'
      expect(page).to have_content 'Some food_2'
    end
  end

  #new jornalentry can be created
  # jornalentry can be deleted
end
