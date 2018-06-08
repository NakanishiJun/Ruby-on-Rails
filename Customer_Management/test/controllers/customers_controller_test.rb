require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { agreement_data: @customer.agreement_data, cf_id: @customer.cf_id, cf_pw: @customer.cf_pw, customer_id: @customer.customer_id, customer_mail: @customer.customer_mail, customer_name: @customer.customer_name, customer_rep: @customer.customer_rep, distributor_id: @customer.distributor_id, dns_info: @customer.dns_info, eLM_domain: @customer.eLM_domain, elm_admin_id: @customer.elm_admin_id, elm_admin_pw: @customer.elm_admin_pw, elm_user_id: @customer.elm_user_id, elm_user_pw: @customer.elm_user_pw, hosting_account: @customer.hosting_account, mail_server_info: @customer.mail_server_info, option_10: @customer.option_10, option_4: @customer.option_4, option_5: @customer.option_5, option_6: @customer.option_6, option_7: @customer.option_7, option_8: @customer.option_8, option_9: @customer.option_9, plan_id: @customer.plan_id, platform_id: @customer.platform_id, server_info: @customer.server_info, sql_server_info: @customer.sql_server_info } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { agreement_data: @customer.agreement_data, cf_id: @customer.cf_id, cf_pw: @customer.cf_pw, customer_id: @customer.customer_id, customer_mail: @customer.customer_mail, customer_name: @customer.customer_name, customer_rep: @customer.customer_rep, distributor_id: @customer.distributor_id, dns_info: @customer.dns_info, eLM_domain: @customer.eLM_domain, elm_admin_id: @customer.elm_admin_id, elm_admin_pw: @customer.elm_admin_pw, elm_user_id: @customer.elm_user_id, elm_user_pw: @customer.elm_user_pw, hosting_account: @customer.hosting_account, mail_server_info: @customer.mail_server_info, option_10: @customer.option_10, option_4: @customer.option_4, option_5: @customer.option_5, option_6: @customer.option_6, option_7: @customer.option_7, option_8: @customer.option_8, option_9: @customer.option_9, plan_id: @customer.plan_id, platform_id: @customer.platform_id, server_info: @customer.server_info, sql_server_info: @customer.sql_server_info } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
