require "application_system_test_case"

class GalleriesTest < ApplicationSystemTestCase
  setup do
    @gallery = galleries(:one)
  end

  test "visiting the index" do
    visit galleries_url
    assert_selector "h1", text: "Galleries"
  end

  test "creating a Gallery" do
    visit galleries_url
    click_on "New Gallery"

    fill_in "Photo", with: @gallery.photo
    click_on "Create Gallery"

    assert_text "Gallery was successfully created"
    click_on "Back"
  end

  test "updating a Gallery" do
    visit galleries_url
    click_on "Edit", match: :first

    fill_in "Photo", with: @gallery.photo
    click_on "Update Gallery"

    assert_text "Gallery was successfully updated"
    click_on "Back"
  end

  test "destroying a Gallery" do
    visit galleries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gallery was successfully destroyed"
  end
end
