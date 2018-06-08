require "application_system_test_case"

class CustomerServicesTest < ApplicationSystemTestCase
  setup do
    @customer_service = customer_services(:one)
  end

  test "visiting the index" do
    visit customer_services_url
    assert_selector "h1", text: "Customer Services"
  end

  test "creating a Customer service" do
    visit customer_services_url
    click_on "New Customer Service"

    fill_in "Customer", with: @customer_service.customer_id
    fill_in "Deal Date", with: @customer_service.deal_date
    fill_in "Issue", with: @customer_service.issue
    fill_in "Staff", with: @customer_service.staff_id
    click_on "Create Customer service"

    assert_text "Customer service was successfully created"
    click_on "Back"
  end

  test "updating a Customer service" do
    visit customer_services_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customer_service.customer_id
    fill_in "Deal Date", with: @customer_service.deal_date
    fill_in "Issue", with: @customer_service.issue
    fill_in "Staff", with: @customer_service.staff_id
    click_on "Update Customer service"

    assert_text "Customer service was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer service" do
    visit customer_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer service was successfully destroyed"
  end
end
