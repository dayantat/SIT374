require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Cyber Security Training Program"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Cyber Security Training Program"
  end

  test "should get about" do
      get about_path
      assert_response :success
      assert_select "title", "About | Cyber Security Training Program"
  end

  test "should get contact" do
      get contact_path
      assert_response :success
      assert_select "title", "Contact | Cyber Security Training Program"
  end


end
