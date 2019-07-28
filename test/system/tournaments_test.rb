require "application_system_test_case"

class TournamentsTest < ApplicationSystemTestCase
  setup do
    @tournament = tournaments(:one)
  end

  test "visiting the index" do
    visit tournaments_url
    assert_selector "h1", text: "Tournaments"
  end

  test "creating a Tournament" do
    visit tournaments_url
    click_on "New Tournament"

    fill_in "Address", with: @tournament.address
    fill_in "Date", with: @tournament.date
    fill_in "Detail", with: @tournament.detail
    fill_in "Game", with: @tournament.game
    fill_in "Image", with: @tournament.image
    check "Is completed" if @tournament.is_completed
    check "Is deleted" if @tournament.is_deleted
    fill_in "Name", with: @tournament.name
    fill_in "User", with: @tournament.user_id
    click_on "Create Tournament"

    assert_text "Tournament was successfully created"
    click_on "Back"
  end

  test "updating a Tournament" do
    visit tournaments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @tournament.address
    fill_in "Date", with: @tournament.date
    fill_in "Detail", with: @tournament.detail
    fill_in "Game", with: @tournament.game
    fill_in "Image", with: @tournament.image
    check "Is completed" if @tournament.is_completed
    check "Is deleted" if @tournament.is_deleted
    fill_in "Name", with: @tournament.name
    fill_in "User", with: @tournament.user_id
    click_on "Update Tournament"

    assert_text "Tournament was successfully updated"
    click_on "Back"
  end

  test "destroying a Tournament" do
    visit tournaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tournament was successfully destroyed"
  end
end
