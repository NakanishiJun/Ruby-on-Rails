require 'test_helper'

class DistributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distributor = distributors(:one)
  end

  test "should get index" do
    get distributors_url
    assert_response :success
  end

  test "should get new" do
    get new_distributor_url
    assert_response :success
  end

  test "should create distributor" do
    assert_difference('Distributor.count') do
      post distributors_url, params: { distributor: { distributor_name: @distributor.distributor_name, distributor_rep: @distributor.distributor_rep, distributor_rep_mail: @distributor.distributor_rep_mail, distributor_rep_tel: @distributor.distributor_rep_tel } }
    end

    assert_redirected_to distributor_url(Distributor.last)
  end

  test "should show distributor" do
    get distributor_url(@distributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_distributor_url(@distributor)
    assert_response :success
  end

  test "should update distributor" do
    patch distributor_url(@distributor), params: { distributor: { distributor_name: @distributor.distributor_name, distributor_rep: @distributor.distributor_rep, distributor_rep_mail: @distributor.distributor_rep_mail, distributor_rep_tel: @distributor.distributor_rep_tel } }
    assert_redirected_to distributor_url(@distributor)
  end

  test "should destroy distributor" do
    assert_difference('Distributor.count', -1) do
      delete distributor_url(@distributor)
    end

    assert_redirected_to distributors_url
  end
end
