require 'test_helper'

class Admin::UranaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_uranais_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_uranais_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_uranais_edit_url
    assert_response :success
  end

end
