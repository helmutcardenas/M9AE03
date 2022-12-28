require "application_system_test_case"

class PhotographersTest < ApplicationSystemTestCase
  setup do
    @photographer = photographers(:one)
  end

  test "visiting the index" do
    visit photographers_url
    assert_selector "h1", text: "Photographers"
  end

  test "should create photographer" do
    visit photographers_url
    click_on "New photographer"

    fill_in "Name", with: @photographer.name
    click_on "Create Photographer"

    assert_text "Photographer was successfully created"
    click_on "Back"
  end

  test "should update Photographer" do
    visit photographer_url(@photographer)
    click_on "Edit this photographer", match: :first

    fill_in "Name", with: @photographer.name
    click_on "Update Photographer"

    assert_text "Photographer was successfully updated"
    click_on "Back"
  end

  test "should destroy Photographer" do
    visit photographer_url(@photographer)
    click_on "Destroy this photographer", match: :first

    assert_text "Photographer was successfully destroyed"
  end
end
