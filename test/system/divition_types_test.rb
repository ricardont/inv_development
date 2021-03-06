require "application_system_test_case"

class DivitionTypesTest < ApplicationSystemTestCase
  setup do
    @divition_type = divition_types(:one)
  end

  test "visiting the index" do
    visit divition_types_url
    assert_selector "h1", text: "Divition Types"
  end

  test "creating a Divition type" do
    visit divition_types_url
    click_on "New Divition Type"

    fill_in "Model part", with: @divition_type.model_part
    fill_in "Name", with: @divition_type.name
    check "Status" if @divition_type.status
    click_on "Create Divition type"

    assert_text "Divition type was successfully created"
    click_on "Back"
  end

  test "updating a Divition type" do
    visit divition_types_url
    click_on "Edit", match: :first

    fill_in "Model part", with: @divition_type.model_part
    fill_in "Name", with: @divition_type.name
    check "Status" if @divition_type.status
    click_on "Update Divition type"

    assert_text "Divition type was successfully updated"
    click_on "Back"
  end

  test "destroying a Divition type" do
    visit divition_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Divition type was successfully destroyed"
  end
end
