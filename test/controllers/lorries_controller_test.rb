require 'test_helper'

class LorriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lorry = lorries(:one)
  end

  test "should get index" do
    get lorries_url
    assert_response :success
  end

  test "should get new" do
    get new_lorry_url
    assert_response :success
  end

  test "should create lorry" do
    assert_difference('Lorry.count') do
      post lorries_url, params: { lorry: {  } }
    end

    assert_redirected_to lorry_url(Lorry.last)
  end

  test "should show lorry" do
    get lorry_url(@lorry)
    assert_response :success
  end

  test "should get edit" do
    get edit_lorry_url(@lorry)
    assert_response :success
  end

  test "should update lorry" do
    patch lorry_url(@lorry), params: { lorry: {  } }
    assert_redirected_to lorry_url(@lorry)
  end

  test "should destroy lorry" do
    assert_difference('Lorry.count', -1) do
      delete lorry_url(@lorry)
    end

    assert_redirected_to lorries_url
  end
end
