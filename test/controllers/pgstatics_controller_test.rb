require 'test_helper'

class PgstaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get aboutus" do
    get pgstatics_aboutus_url
    assert_response :success
  end

  test "should get contacts" do
    get pgstatics_contacts_url
    assert_response :success
  end

  test "should get courses" do
    get pgstatics_courses_url
    assert_response :success
  end

end
