require "application_system_test_case"

class DistributorsTest < ApplicationSystemTestCase
  setup do
    @distributor = distributors(:one)
  end

  test "visiting the index" do
    visit distributors_url
    assert_selector "h1", text: "Distributors"
  end

  test "creating a Distributor" do
    visit distributors_url
    click_on "New Distributor"

    fill_in "Distributor Name", with: @distributor.distributor_name
    fill_in "Distributor Rep", with: @distributor.distributor_rep
    fill_in "Distributor Rep Mail", with: @distributor.distributor_rep_mail
    fill_in "Distributor Rep Tel", with: @distributor.distributor_rep_tel
    click_on "Create Distributor"

    assert_text "Distributor was successfully created"
    click_on "Back"
  end

  test "updating a Distributor" do
    visit distributors_url
    click_on "Edit", match: :first

    fill_in "Distributor Name", with: @distributor.distributor_name
    fill_in "Distributor Rep", with: @distributor.distributor_rep
    fill_in "Distributor Rep Mail", with: @distributor.distributor_rep_mail
    fill_in "Distributor Rep Tel", with: @distributor.distributor_rep_tel
    click_on "Update Distributor"

    assert_text "Distributor was successfully updated"
    click_on "Back"
  end

  test "destroying a Distributor" do
    visit distributors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distributor was successfully destroyed"
  end
end
