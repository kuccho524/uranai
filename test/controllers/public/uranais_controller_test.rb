require 'test_helper'

class Public::UranaisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_uranais_show_url
    assert_response :success
  end

  test "should get new" do
    get public_uranais_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_uranais_edit_url
    assert_response :success
  end

end
