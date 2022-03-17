require "test_helper"

class ScaffoldingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffolding = scaffoldings(:one)
  end

  test "should get index" do
    get scaffoldings_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffolding_url
    assert_response :success
  end

  test "should create scaffolding" do
    assert_difference("Scaffolding.count") do
      post scaffoldings_url, params: { scaffolding: { description: @scaffolding.description, title: @scaffolding.title } }
    end

    assert_redirected_to scaffolding_url(Scaffolding.last)
  end

  test "should show scaffolding" do
    get scaffolding_url(@scaffolding)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffolding_url(@scaffolding)
    assert_response :success
  end

  test "should update scaffolding" do
    patch scaffolding_url(@scaffolding), params: { scaffolding: { description: @scaffolding.description, title: @scaffolding.title } }
    assert_redirected_to scaffolding_url(@scaffolding)
  end

  test "should destroy scaffolding" do
    assert_difference("Scaffolding.count", -1) do
      delete scaffolding_url(@scaffolding)
    end

    assert_redirected_to scaffoldings_url
  end
end
