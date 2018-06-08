require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Agreement Data", with: @customer.agreement_data
    fill_in "Cf", with: @customer.cf_id
    fill_in "Cf Pw", with: @customer.cf_pw
    fill_in "Customer", with: @customer.customer_id
    fill_in "Customer Mail", with: @customer.customer_mail
    fill_in "Customer Name", with: @customer.customer_name
    fill_in "Customer Rep", with: @customer.customer_rep
    fill_in "Distributor", with: @customer.distributor_id
    fill_in "Dns Info", with: @customer.dns_info
    fill_in "Elm Domain", with: @customer.eLM_domain
    fill_in "Elm Admin", with: @customer.elm_admin_id
    fill_in "Elm Admin Pw", with: @customer.elm_admin_pw
    fill_in "Elm User", with: @customer.elm_user_id
    fill_in "Elm User Pw", with: @customer.elm_user_pw
    fill_in "Hosting Account", with: @customer.hosting_account
    fill_in "Mail Server Info", with: @customer.mail_server_info
    fill_in "Option 10", with: @customer.option_10
    fill_in "Option 4", with: @customer.option_4
    fill_in "Option 5", with: @customer.option_5
    fill_in "Option 6", with: @customer.option_6
    fill_in "Option 7", with: @customer.option_7
    fill_in "Option 8", with: @customer.option_8
    fill_in "Option 9", with: @customer.option_9
    fill_in "Plan", with: @customer.plan_id
    fill_in "Platform", with: @customer.platform_id
    fill_in "Server Info", with: @customer.server_info
    fill_in "Sql Server Info", with: @customer.sql_server_info
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Agreement Data", with: @customer.agreement_data
    fill_in "Cf", with: @customer.cf_id
    fill_in "Cf Pw", with: @customer.cf_pw
    fill_in "Customer", with: @customer.customer_id
    fill_in "Customer Mail", with: @customer.customer_mail
    fill_in "Customer Name", with: @customer.customer_name
    fill_in "Customer Rep", with: @customer.customer_rep
    fill_in "Distributor", with: @customer.distributor_id
    fill_in "Dns Info", with: @customer.dns_info
    fill_in "Elm Domain", with: @customer.eLM_domain
    fill_in "Elm Admin", with: @customer.elm_admin_id
    fill_in "Elm Admin Pw", with: @customer.elm_admin_pw
    fill_in "Elm User", with: @customer.elm_user_id
    fill_in "Elm User Pw", with: @customer.elm_user_pw
    fill_in "Hosting Account", with: @customer.hosting_account
    fill_in "Mail Server Info", with: @customer.mail_server_info
    fill_in "Option 10", with: @customer.option_10
    fill_in "Option 4", with: @customer.option_4
    fill_in "Option 5", with: @customer.option_5
    fill_in "Option 6", with: @customer.option_6
    fill_in "Option 7", with: @customer.option_7
    fill_in "Option 8", with: @customer.option_8
    fill_in "Option 9", with: @customer.option_9
    fill_in "Plan", with: @customer.plan_id
    fill_in "Platform", with: @customer.platform_id
    fill_in "Server Info", with: @customer.server_info
    fill_in "Sql Server Info", with: @customer.sql_server_info
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
