require "application_system_test_case"

class MissionariesTest < ApplicationSystemTestCase
  setup do
    @missionary = missionaries(:one)
  end

  test "visiting the index" do
    visit missionaries_url
    assert_selector "h1", text: "Missionaries"
  end

  test "creating a Missionary" do
    visit missionaries_url
    click_on "New Missionary"

    fill_in "Campus", with: @missionary.campus
    fill_in "Image Url", with: @missionary.image_url
    fill_in "Name", with: @missionary.name
    click_on "Create Missionary"

    assert_text "Missionary was successfully created"
    click_on "Back"
  end

  test "updating a Missionary" do
    visit missionaries_url
    click_on "Edit", match: :first

    fill_in "Campus", with: @missionary.campus
    fill_in "Image Url", with: @missionary.image_url
    fill_in "Name", with: @missionary.name
    click_on "Update Missionary"

    assert_text "Missionary was successfully updated"
    click_on "Back"
  end

  test "destroying a Missionary" do
    visit missionaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Missionary was successfully destroyed"
  end
end
