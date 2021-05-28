require 'test_helper'

class Admin::KanteisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_kanteis_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_kanteis_edit_url
    assert_response :success
  end

end
