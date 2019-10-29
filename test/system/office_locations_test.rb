require "application_system_test_case"

class OfficeLocationsTest < ApplicationSystemTestCase
  setup do
    @office_location = office_locations(:one)
  end

  test "visiting the index" do
    visit office_locations_url
    assert_selector "h1", text: "Office Locations"
  end

  test "creating a Office location" do
    visit office_locations_url
    click_on "New Office Location"

    fill_in "Phone", with: @office_location.phone
    fill_in "Physician", with: @office_location.physician_id
    fill_in "Street address", with: @office_location.street_address
    fill_in "Zip", with: @office_location.zip
    click_on "Create Office location"

    assert_text "Office location was successfully created"
    click_on "Back"
  end

  test "updating a Office location" do
    visit office_locations_url
    click_on "Edit", match: :first

    fill_in "Phone", with: @office_location.phone
    fill_in "Physician", with: @office_location.physician_id
    fill_in "Street address", with: @office_location.street_address
    fill_in "Zip", with: @office_location.zip
    click_on "Update Office location"

    assert_text "Office location was successfully updated"
    click_on "Back"
  end

  test "destroying a Office location" do
    visit office_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Office location was successfully destroyed"
  end
end
