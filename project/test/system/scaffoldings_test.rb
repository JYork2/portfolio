require "application_system_test_case"

class ScaffoldingsTest < ApplicationSystemTestCase
  setup do
    @scaffolding = scaffoldings(:one)
  end

  test "visiting the index" do
    visit scaffoldings_url
    assert_selector "h1", text: "Scaffoldings"
  end

  test "should create scaffolding" do
    visit scaffoldings_url
    click_on "New scaffolding"

    fill_in "Description", with: @scaffolding.description
    fill_in "Title", with: @scaffolding.title
    click_on "Create Scaffolding"

    assert_text "Scaffolding was successfully created"
    click_on "Back"
  end

  test "should update Scaffolding" do
    visit scaffolding_url(@scaffolding)
    click_on "Edit this scaffolding", match: :first

    fill_in "Description", with: @scaffolding.description
    fill_in "Title", with: @scaffolding.title
    click_on "Update Scaffolding"

    assert_text "Scaffolding was successfully updated"
    click_on "Back"
  end

  test "should destroy Scaffolding" do
    visit scaffolding_url(@scaffolding)
    click_on "Destroy this scaffolding", match: :first

    assert_text "Scaffolding was successfully destroyed"
  end
end
