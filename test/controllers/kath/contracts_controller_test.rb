require "test_helper"

class Kath::ContractsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kath_contracts_index_url
    assert_response :success
  end

  test "should get new" do
    get kath_contracts_new_url
    assert_response :success
  end

  test "should get create" do
    get kath_contracts_create_url
    assert_response :success
  end

  test "should get show" do
    get kath_contracts_show_url
    assert_response :success
  end
end
