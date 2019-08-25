require 'test_helper'

class TunesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tunes_index_url
    assert_response :success
  end

  test "should get new" do
    get tunes_new_url
    assert_response :success
  end

  test "should get show" do
    get tunes_show_url
    assert_response :success
  end

  test "should get edit" do
    get tunes_edit_url
    assert_response :success
  end

end
