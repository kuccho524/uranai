require 'test_helper'

class KanteisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kanteis_index_url
    assert_response :success
  end

  test "should get show" do
    get kanteis_show_url
    assert_response :success
  end

  test "should get edit" do
    get kanteis_edit_url
    assert_response :success
  end

  test "should get new" do
    get kanteis_new_url
    assert_response :success
  end

end
