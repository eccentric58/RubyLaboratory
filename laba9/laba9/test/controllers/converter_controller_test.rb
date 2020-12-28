require 'test_helper'

class ConverterControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get converter_input_url
    assert_response :success
  end

  test "should get view" do
    get converter_view_url
    assert_response :success
  end

  test "should get 3" do 
    get converter_view_url, params: {val: 6}
    assert_equal assigns[:res], 3
    assert_equal assigns[:flag], true
  end

  test "should get error" do 
    get converter_view_url, params: {val: 'string'}
    assert_equal assigns[:res], 'Error'
    assert_equal assigns[:flag], false
  end
end
