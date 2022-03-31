require "application_system_test_case"

class ProfileCardsTest < ApplicationSystemTestCase
  setup do
    @profile_card = profile_cards(:one)
  end

  test "visiting the index" do
    visit profile_cards_url
    assert_selector "h1", text: "Profile Cards"
  end

  test "creating a Profile card" do
    visit profile_cards_url
    click_on "New Profile Card"

    fill_in "Background", with: @profile_card.background
    fill_in "Birth year", with: @profile_card.birth_year
    fill_in "First name", with: @profile_card.first_name
    fill_in "Hobbies", with: @profile_card.hobbies
    fill_in "Last name", with: @profile_card.last_name
    fill_in "Picture", with: @profile_card.picture
    click_on "Create Profile card"

    assert_text "Profile card was successfully created"
    click_on "Back"
  end

  test "updating a Profile card" do
    visit profile_cards_url
    click_on "Edit", match: :first

    fill_in "Background", with: @profile_card.background
    fill_in "Birth year", with: @profile_card.birth_year
    fill_in "First name", with: @profile_card.first_name
    fill_in "Hobbies", with: @profile_card.hobbies
    fill_in "Last name", with: @profile_card.last_name
    fill_in "Picture", with: @profile_card.picture
    click_on "Update Profile card"

    assert_text "Profile card was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile card" do
    visit profile_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile card was successfully destroyed"
  end
end
