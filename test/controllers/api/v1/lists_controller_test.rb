require "test_helper"
require "swagger_helper"

class Api::V1::ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_list = api_v1_lists(:one)
  end

  test "should get index" do
    get api_v1_lists_url, as: :json
    assert_response :success
  end

  test "should create api_v1_list" do
    assert_difference('Api::V1::List.count') do
      post api_v1_lists_url, params: { api_v1_list: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_list" do
    get api_v1_list_url(@api_v1_list), as: :json
    assert_response :success
  end

  test "should update api_v1_list" do
    patch api_v1_list_url(@api_v1_list), params: { api_v1_list: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_list" do
    assert_difference('Api::V1::List.count', -1) do
      delete api_v1_list_url(@api_v1_list), as: :json
    end

    assert_response 204
  end
end
