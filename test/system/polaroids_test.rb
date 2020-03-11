require "application_system_test_case"

class PolaroidsTest < ApplicationSystemTestCase
  setup do
    @polaroid = polaroids(:one)
  end

  test "visiting the index" do
    visit polaroids_url
    assert_selector "h1", text: "Polaroids"
  end

  test "creating a Polaroid" do
    visit polaroids_url
    click_on "New Polaroid"

    fill_in "Description", with: @polaroid.description
    fill_in "Title", with: @polaroid.title
    click_on "Create Polaroid"

    assert_text "Polaroid was successfully created"
    click_on "Back"
  end

  test "updating a Polaroid" do
    visit polaroids_url
    click_on "Edit", match: :first

    fill_in "Description", with: @polaroid.description
    fill_in "Title", with: @polaroid.title
    click_on "Update Polaroid"

    assert_text "Polaroid was successfully updated"
    click_on "Back"
  end

  test "destroying a Polaroid" do
    visit polaroids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Polaroid was successfully destroyed"
  end
end
