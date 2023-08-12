require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get add_path
    assert_response :success
  end

end
