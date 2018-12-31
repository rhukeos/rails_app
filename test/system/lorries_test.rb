require "application_system_test_case"

class LorriesTest < ApplicationSystemTestCase
  setup do
    @lorry = lorries(:one)
  end

  test "visiting the index" do
    visit lorries_url
    assert_selector "h1", text: "Lorries"
  end

  test "creating a Lorry" do
    visit lorries_url
    click_on "New Lorry"

    click_on "Create Lorry"

    assert_text "Lorry was successfully created"
    click_on "Back"
  end

  test "updating a Lorry" do
    visit lorries_url
    click_on "Edit", match: :first

    click_on "Update Lorry"

    assert_text "Lorry was successfully updated"
    click_on "Back"
  end

  test "destroying a Lorry" do
    visit lorries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lorry was successfully destroyed"
  end
end
